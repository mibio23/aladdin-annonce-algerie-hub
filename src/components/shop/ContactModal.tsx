import React, { useState, useEffect } from 'react';
import { Dialog, DialogContent, DialogDescription, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { MessageCircle, Send, Phone, Mail, MapPin } from 'lucide-react';
import { useToast } from '@/hooks/use-toast';
import { useAuth } from '@/contexts/useAuth';
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';
import { useNavigate } from 'react-router-dom';
import type { Shop } from '@/types/shop';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';

interface ContactModalProps {
  shop: Shop | null;
  onClose: () => void;
}

const normalizePhone = (value: string) => {
  if (!value) return '';
  const trimmed = value.trim();
  const hasPlus = trimmed.startsWith('+');
  const digits = trimmed.replace(/\D/g, '');
  if (!digits) return '';
  return hasPlus ? `+${digits}` : digits;
};

const ContactModal: React.FC<ContactModalProps> = ({ shop, onClose }) => {
  const [message, setMessage] = useState('');
  const [loading, setLoading] = useState(false);
  const { toast } = useToast();
  const { user } = useAuth();
  const navigate = useNavigate();
  const { t, language } = useSafeI18nWithRouter();
  const { getLocalizedPath } = useLanguageNavigation();
  const open = !!shop;

  const tr = (key: string, fallback: string | Record<string, string>) => {
    const translated = t(key);
    if (translated && translated !== key) return translated;
    if (typeof fallback === 'string') return fallback;
    return fallback[language] || fallback.fr || Object.values(fallback)[0] || key;
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    if (!shop || !shop.ownerId) {
      toast({
        title: t('common.error'),
        description: tr('shopContact.missingInfo', {
          fr: 'Impossible de contacter le vendeur (informations manquantes)',
          en: 'Unable to contact the seller (missing information)',
          es: 'No se puede contactar al vendedor (falta información)',
          it: 'Impossibile contattare il venditore (informazioni mancanti)',
          de: 'Der Verkäufer kann nicht kontaktiert werden (fehlende Informationen)',
          ar: 'تعذر الاتصال بالبائع (معلومات ناقصة)',
        }),
        variant: "destructive"
      });
      return;
    }
    
    if (!user) {
      window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }));
      return;
    }

    if (shop.ownerId === user.id) {
      toast({
        title: t('common.error'),
        description: tr('shopContact.selfMessage', {
          fr: 'Vous ne pouvez pas envoyer de message à votre propre boutique.',
          en: 'You cannot send a message to your own shop.',
          es: 'No puedes enviar un mensaje a tu propia tienda.',
          it: 'Non puoi inviare un messaggio al tuo negozio.',
          de: 'Sie können Ihrem eigenen Shop keine Nachricht senden.',
          ar: 'لا يمكنك إرسال رسالة إلى متجرك الخاص.',
        }),
        variant: "destructive"
      });
      return;
    }

    if (!message.trim()) {
      toast({
        title: t('common.error'),
        description: tr('shopContact.enterMessage', {
          fr: 'Veuillez saisir un message',
          en: 'Please enter a message',
          es: 'Por favor, introduce un mensaje',
          it: 'Inserisci un messaggio',
          de: 'Bitte geben Sie eine Nachricht ein',
          ar: 'يرجى إدخال رسالة',
        }),
        variant: "destructive"
      });
      return;
    }
    
    try {
      setLoading(true);
      
      // 1. Vérifier si une conversation existe déjà
      const { data: existingConversations, error: fetchError } = await supabase
        .from('conversations')
        .select('id')
        .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${shop.ownerId}),and(participant_1_id.eq.${shop.ownerId},participant_2_id.eq.${user.id})`)
        .eq('subject_type', 'shop')
        .eq('subject_id', shop.id)
        .limit(1)
        .maybeSingle();

      if (fetchError) {
        throw fetchError;
      }

      let conversationId = existingConversations?.id;

      if (!conversationId) {
        const { data: participantConversation, error: participantFetchError } = await supabase
        .from('conversations')
          .select('id')
          .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${shop.ownerId}),and(participant_1_id.eq.${shop.ownerId},participant_2_id.eq.${user.id})`)
          .limit(1)
          .maybeSingle();

        if (participantFetchError) {
          throw participantFetchError;
        }

        conversationId = participantConversation?.id;
      }

      // 2. Si aucune conversation n'existe, en créer une
      if (!conversationId) {
        const { data: newConversation, error: createError } = await supabase
          .from('conversations')
          .insert({
            participant_1_id: user.id,
            participant_2_id: shop.ownerId,
            subject_type: 'shop',
            subject_id: shop.id,
            title: shop.name,
            updated_at: new Date().toISOString()
          })
          .select('id')
          .single();

        if (createError) {
          const { data: fallbackConversation, error: fallbackError } = await supabase
        .from('conversations')
            .select('id')
            .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${shop.ownerId}),and(participant_1_id.eq.${shop.ownerId},participant_2_id.eq.${user.id})`)
            .limit(1)
            .maybeSingle();

          if (fallbackError || !fallbackConversation?.id) {
            throw createError;
          }

          conversationId = fallbackConversation.id;
        } else {
          conversationId = newConversation.id;
        }
      }

      // 3. Envoyer le message
      const { error: messageError } = await supabase
        .from('messages')
        .insert({
          conversation_id: conversationId,
          sender_id: user.id,
          content: message,
          is_read: false
        });

      if (messageError) throw messageError;

      // 4. Mettre à jour la date de dernière activité de la conversation
      const now = new Date().toISOString();
      await supabase
        .from('conversations')
        .update({ updated_at: now, last_message_at: now }) // Ou last_message_at si cette colonne est utilisée
        .eq('id', conversationId);
      
      toast({
        title: tr('shopContact.sentTitle', {
          fr: 'Message envoyé !',
          en: 'Message sent!',
          es: '¡Mensaje enviado!',
          it: 'Messaggio inviato!',
          de: 'Nachricht gesendet!',
          ar: 'تم إرسال الرسالة!',
        }),
        description: tr('shopContact.sentDesc', {
          fr: `Votre message a été envoyé à ${shop.name}.`,
          en: `Your message has been sent to ${shop.name}.`,
          es: `Tu mensaje ha sido enviado a ${shop.name}.`,
          it: `Il tuo messaggio è stato inviato a ${shop.name}.`,
          de: `Ihre Nachricht wurde an ${shop.name} gesendet.`,
          ar: `تم إرسال رسالتك إلى ${shop.name}.`,
        }),
      });
      
      // Réinitialiser le formulaire
      setMessage('');
      
      // Fermer le modal
      setTimeout(() => {
        onClose();
        navigate(getLocalizedPath(`/messages?conversation=${conversationId}`));
      }, 1500);
      
    } catch (error) {
      logger.error('Error sending message:', error);
      toast({
        title: t('common.error'),
        description: tr('shopContact.sendError', {
          fr: "Une erreur est survenue lors de l'envoi de votre message. Veuillez réessayer.",
          en: 'An error occurred while sending your message. Please try again.',
          es: 'Se produjo un error al enviar tu mensaje. Inténtalo de nuevo.',
          it: "Si è verificato un errore durante l'invio del messaggio. Riprova.",
          de: 'Beim Senden Ihrer Nachricht ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.',
          ar: 'حدث خطأ أثناء إرسال رسالتك. يرجى المحاولة مرة أخرى.',
        }),
        variant: "destructive"
      });
    } finally {
      setLoading(false);
    }
  };


  // Auto-redirect if not logged in removed as AuthRequiredBubble now handles it with AuthDrawer
  useEffect(() => {
    // This effect is now empty or can be removed
  }, [user, open, onClose]);

  if (!shop) return null;

  return (
    <Dialog open={!!shop} onOpenChange={onClose}>
      <DialogContent className="sm:max-w-md bg-gradient-to-b from-white to-gray-50 dark:from-gray-900 dark:to-gray-950 border-none shadow-2xl">
        <DialogHeader className="space-y-3 pb-4 border-b">
          <div className="mx-auto bg-primary/10 p-3 rounded-full w-fit">
            <MessageCircle className="h-6 w-6 text-primary" />
          </div>
          <DialogTitle className="text-center text-xl font-bold bg-clip-text text-transparent bg-gradient-to-r from-primary to-purple-600">
            {tr('shopContact.title', {
              fr: `Contacter ${shop.name}`,
              en: `Contact ${shop.name}`,
              es: `Contactar con ${shop.name}`,
              it: `Contatta ${shop.name}`,
              de: `${shop.name} kontaktieren`,
              ar: `التواصل مع ${shop.name}`,
            })}
          </DialogTitle>
          <DialogDescription className="text-center text-sm px-4">
            {tr('shopContact.subtitle', {
              fr: 'Envoyez un message directement à la boutique.',
              en: 'Send a message directly to the shop.',
              es: 'Envía un mensaje directamente a la tienda.',
              it: 'Invia un messaggio direttamente al negozio.',
              de: 'Senden Sie eine Nachricht direkt an den Shop.',
              ar: 'أرسل رسالة مباشرة إلى المتجر.',
            })}
          </DialogDescription>
        </DialogHeader>
        
        <div className="space-y-6 pt-4">
          {/* Informations de contact de la boutique */}
          <div className="bg-white dark:bg-gray-800 rounded-xl p-4 shadow-sm border border-gray-100 dark:border-gray-700 space-y-3">
            <h4 className="font-semibold text-sm text-center text-gray-500 mb-2 uppercase tracking-wider">
              {tr('shopContact.contactDetails', {
                fr: 'Coordonnées',
                en: 'Contact details',
                es: 'Datos de contacto',
                it: 'Dettagli di contatto',
                de: 'Kontaktdaten',
                ar: 'بيانات الاتصال',
              })}
            </h4>
            
            {shop.phoneNumbers.length > 0 && (
              <div
                className="flex items-center justify-center gap-3 text-sm p-2 hover:bg-gray-50 dark:hover:bg-gray-700 rounded-lg transition-colors cursor-pointer"
                onClick={() => {
                  const normalizedPhone = normalizePhone(shop.phoneNumbers[0]);
                  if (normalizedPhone) {
                    window.location.href = `tel:${normalizedPhone}`;
                  }
                }}
              >
                <div className="bg-green-100 p-2 rounded-full">
                  <Phone className="h-4 w-4 text-green-600" />
                </div>
                <span className="font-medium">{shop.phoneNumbers.join(', ')}</span>
              </div>
            )}
            
            <div className="flex items-center justify-center gap-3 text-sm p-2 hover:bg-gray-50 dark:hover:bg-gray-700 rounded-lg transition-colors">
              <div className="bg-blue-100 p-2 rounded-full">
                <Mail className="h-4 w-4 text-blue-600" />
              </div>
              <span className="font-medium">contact@{shop.name.toLowerCase().replace(/\s/g, '')}.dz</span>
            </div>
            
            <div className="flex items-center justify-center gap-3 text-sm p-2 hover:bg-gray-50 dark:hover:bg-gray-700 rounded-lg transition-colors">
              <div className="bg-orange-100 p-2 rounded-full">
                <MapPin className="h-4 w-4 text-orange-600" />
              </div>
              <span className="font-medium">
                {shop.wilaya}, {tr('common.algeria', { fr: 'Algérie', en: 'Algeria', es: 'Argelia', it: 'Algeria', de: 'Algerien', ar: 'الجزائر' })}
              </span>
            </div>
          </div>
          
          {/* Formulaire de contact */}
          <form onSubmit={handleSubmit} className="space-y-5">
            <div className="space-y-2">
              <Label htmlFor="message" className="text-sm font-semibold ml-1">
                {tr('shopContact.yourMessage', {
                  fr: 'Votre message',
                  en: 'Your message',
                  es: 'Tu mensaje',
                  it: 'Il tuo messaggio',
                  de: 'Ihre Nachricht',
                  ar: 'رسالتك',
                })}
              </Label>
              <Textarea
                id="message"
                value={message}
                onChange={(e) => setMessage(e.target.value)}
                placeholder={tr('shopContact.placeholder', {
                  fr: 'Bonjour, je suis intéressé par...',
                  en: 'Hello, I am interested in...',
                  es: 'Hola, estoy interesado en...',
                  it: 'Ciao, sono interessato a...',
                  de: 'Hallo, ich interessiere mich für...',
                  ar: 'مرحباً، أنا مهتم بـ...',
                })}
                rows={5}
                className="resize-none focus-visible:ring-primary rounded-xl border-gray-200 shadow-sm p-4 text-base"
                required
              />
            </div>
            
            <Button 
              type="submit" 
              disabled={loading} 
              className="w-full h-12 text-lg font-medium rounded-xl shadow-lg hover:shadow-xl transition-all duration-300 bg-gradient-to-r from-primary to-purple-600 hover:scale-[1.02] active:scale-[0.98]"
            >
              {loading ? (
                <>{tr('shopContact.sending', { fr: 'Envoi en cours...', en: 'Sending...', es: 'Enviando...', it: 'Invio in corso...', de: 'Wird gesendet...', ar: 'جارٍ الإرسال...' })}</>
              ) : (
                <>
                  <Send className="h-5 w-5 mr-2" />
                  {tr('shopContact.send', { fr: 'Envoyer le message', en: 'Send message', es: 'Enviar mensaje', it: 'Invia il messaggio', de: 'Nachricht senden', ar: 'إرسال الرسالة' })}
                </>
              )}
            </Button>
          </form>
        </div>
      </DialogContent>
    </Dialog>
  );
};

export default ContactModal;
