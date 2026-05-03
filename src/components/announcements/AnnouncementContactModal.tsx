import React, { useState, useEffect } from 'react';
import { Dialog, DialogContent, DialogDescription, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { MessageCircle, Send } from 'lucide-react';
import { useToast } from '@/hooks/use-toast';
import { useAuth } from '@/contexts/useAuth';
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';
import { useNavigate } from 'react-router-dom';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';

interface AnnouncementContactModalProps {
  announcement: {
    id: string;
    title: string;
    user_id?: string | null;
  } | null;
  onClose: () => void;
}

const AnnouncementContactModal: React.FC<AnnouncementContactModalProps> = ({ announcement, onClose }) => {
  const [message, setMessage] = useState('');
  const [loading, setLoading] = useState(false);
  const { toast } = useToast();
  const { user } = useAuth();
  const navigate = useNavigate();
  const { t, language } = useSafeI18nWithRouter();
  const { getLocalizedPath } = useLanguageNavigation();

  const tr = (key: string, fallback: string | Record<string, string>) => {
    const translated = t(key);
    if (translated && translated !== key) return translated;
    if (typeof fallback === 'string') return fallback;
    return fallback[language] || fallback.fr || Object.values(fallback)[0] || key;
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    if (!announcement || !announcement.user_id) {
      toast({
        title: t('common.error'),
        description: tr('announcementContact.missingSellerInfo', {
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
      toast({
        title: t('auth.loginRequired'),
        description: t('auth.loginRequiredDesc'),
      });
      return;
    }

    if (announcement.user_id === user.id) {
      toast({
        title: t('common.error'),
        description: tr('announcementContact.selfMessage', {
          fr: 'Vous ne pouvez pas envoyer de message à vous-même.',
          en: 'You cannot send a message to yourself.',
          es: 'No puedes enviarte un mensaje a ti mismo.',
          it: 'Non puoi inviare un messaggio a te stesso.',
          de: 'Sie können sich nicht selbst eine Nachricht senden.',
          ar: 'لا يمكنك إرسال رسالة إلى نفسك.',
        }),
        variant: "destructive"
      });
      return;
    }

    if (!message.trim()) {
      toast({
        title: t('common.error'),
        description: tr('announcementContact.enterMessage', {
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
      
      // 1. Check if conversation exists (with specific subject)
      const { data: existingConversations, error: fetchError } = await supabase
        .from('conversations')
        .select('id')
        .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${announcement.user_id}),and(participant_1_id.eq.${announcement.user_id},participant_2_id.eq.${user.id})`)
        .eq('subject_type', 'ad')
        .eq('subject_id', announcement.id)
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
          .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${announcement.user_id}),and(participant_1_id.eq.${announcement.user_id},participant_2_id.eq.${user.id})`)
          .limit(1)
          .maybeSingle();

        if (participantFetchError) {
          throw participantFetchError;
        }

        conversationId = participantConversation?.id;
      }

      // 2. If no conversation exists, create one
      if (!conversationId) {
        const { data: newConversation, error: createError } = await supabase
          .from('conversations')
          .insert({
            participant_1_id: user.id,
            participant_2_id: announcement.user_id,
            subject_type: 'ad',
            subject_id: announcement.id,
            title: announcement.title,
            updated_at: new Date().toISOString()
          })
          .select('id')
          .single();

        if (createError) {
          const { data: fallbackConversation, error: fallbackError } = await supabase
        .from('conversations')
            .select('id')
            .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${announcement.user_id}),and(participant_1_id.eq.${announcement.user_id},participant_2_id.eq.${user.id})`)
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

      // 3. Send message
      const { error: messageError } = await supabase
        .from('messages')
        .insert({
          conversation_id: conversationId,
          sender_id: user.id,
          content: message,
          is_read: false
        });

      if (messageError) throw messageError;

      // 4. Update conversation timestamp
      const now = new Date().toISOString();
      await supabase
        .from('conversations')
        .update({ updated_at: now, last_message_at: now })
        .eq('id', conversationId);
      
      toast({
        title: tr('announcementContact.sentTitle', {
          fr: 'Message envoyé !',
          en: 'Message sent!',
          es: '¡Mensaje enviado!',
          it: 'Messaggio inviato!',
          de: 'Nachricht gesendet!',
          ar: 'تم إرسال الرسالة!',
        }),
        description: tr('announcementContact.sentDesc', {
          fr: 'Votre message a été envoyé au vendeur.',
          en: 'Your message has been sent to the seller.',
          es: 'Tu mensaje ha sido enviado al vendedor.',
          it: 'Il tuo messaggio è stato inviato al venditore.',
          de: 'Ihre Nachricht wurde an den Verkäufer gesendet.',
          ar: 'تم إرسال رسالتك إلى البائع.',
        }),
      });
      
      setMessage('');
      
      setTimeout(() => {
        onClose();
        navigate(getLocalizedPath(`/messages?conversation=${conversationId}`));
      }, 1500);
      
    } catch (error) {
      logger.error('Error sending message:', error);
      toast({
        title: t('common.error'),
        description: tr('announcementContact.sendError', {
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
  }, [user, announcement, onClose]);

  if (!announcement) return null;

  return (
    <Dialog open={!!announcement} onOpenChange={(open) => !open && onClose()}>
      <DialogContent className="sm:max-w-md bg-gradient-to-b from-white to-gray-50 dark:from-gray-900 dark:to-gray-950 border-none shadow-2xl">
        <DialogHeader className="space-y-3 pb-4 border-b">
          <div className="mx-auto bg-primary/10 p-3 rounded-full w-fit">
            <MessageCircle className="h-6 w-6 text-primary" />
          </div>
          <DialogTitle className="text-center text-xl font-bold bg-clip-text text-transparent bg-gradient-to-r from-primary to-purple-600">
            {tr('announcementContact.title', {
              fr: 'Contacter le vendeur',
              en: 'Contact the seller',
              es: 'Contactar al vendedor',
              it: 'Contatta il venditore',
              de: 'Verkäufer kontaktieren',
              ar: 'الاتصال بالبائع',
            })}
          </DialogTitle>
          <DialogDescription className="text-center text-sm px-4">
            {tr('announcementContact.subtitle', {
              fr: `Envoyez un message concernant "${announcement.title}"`,
              en: `Send a message about "${announcement.title}"`,
              es: `Envía un mensaje sobre "${announcement.title}"`,
              it: `Invia un messaggio riguardo "${announcement.title}"`,
              de: `Senden Sie eine Nachricht zu "${announcement.title}"`,
              ar: `أرسل رسالة بخصوص "${announcement.title}"`,
            })}
          </DialogDescription>
        </DialogHeader>
        
        <div className="space-y-6 pt-4">
          <form onSubmit={handleSubmit} className="space-y-5">
            <div className="space-y-2">
              <Label htmlFor="message" className="text-sm font-semibold ml-1">
                {tr('announcementContact.yourMessage', {
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
                placeholder={tr('announcementContact.placeholder', {
                  fr: "Bonjour, votre annonce m'intéresse. Est-elle toujours disponible ?",
                  en: 'Hello, I am interested in your listing. Is it still available?',
                  es: 'Hola, me interesa tu anuncio. ¿Sigue disponible?',
                  it: 'Ciao, sono interessato al tuo annuncio. È ancora disponibile?',
                  de: 'Hallo, ich interessiere mich für Ihre Anzeige. Ist sie noch verfügbar?',
                  ar: 'مرحباً، أنا مهتم بإعلانك. هل لا يزال متاحاً؟',
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
                <>{tr('announcementContact.sending', { fr: 'Envoi en cours...', en: 'Sending...', es: 'Enviando...', it: 'Invio in corso...', de: 'Wird gesendet...', ar: 'جارٍ الإرسال...' })}</>
              ) : (
                <>
                  <Send className="h-5 w-5 mr-2" />
                  {tr('announcementContact.send', { fr: 'Envoyer le message', en: 'Send message', es: 'Enviar mensaje', it: 'Invia il messaggio', de: 'Nachricht senden', ar: 'إرسال الرسالة' })}
                </>
              )}
            </Button>
          </form>
        </div>
      </DialogContent>
    </Dialog>
  );
};

export default AnnouncementContactModal;
