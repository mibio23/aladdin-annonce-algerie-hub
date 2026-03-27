import React, { useState, useEffect } from 'react';
import { Dialog, DialogContent, DialogDescription, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { MessageCircle, Send, Phone, Mail, MapPin } from 'lucide-react';
import { useToast } from '@/hooks/use-toast';
import { useAuth } from '@/contexts/useAuth';
import { supabase } from '@/integrations/supabase/client';
import { useNavigate } from 'react-router-dom';
import type { Shop } from '@/types/shop';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';

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
  const { t } = useSafeI18nWithRouter();
  const open = !!shop;

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    if (!shop || !shop.ownerId) {
      toast({
        title: "Erreur",
        description: "Impossible de contacter le vendeur (Informations manquantes)",
        variant: "destructive"
      });
      return;
    }
    
    if (!user) {
      toast({
        title: t('auth.loginRequired'),
        description: t('auth.loginRequiredDesc'),
      });
      // Optionnel : Rediriger vers la page de connexion
      // navigate('/auth'); 
      return;
    }

    if (!message.trim()) {
      toast({
        title: "Erreur",
        description: "Veuillez saisir un message",
        variant: "destructive"
      });
      return;
    }
    
    try {
      setLoading(true);
      
      // 1. Vérifier si une conversation existe déjà
      const { data: existingConversations, error: fetchError } = await (supabase
        .from('conversations') as any)
        .select('id')
        .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${shop.ownerId}),and(participant_1_id.eq.${shop.ownerId},participant_2_id.eq.${user.id})`)
        .single();

      if (fetchError && fetchError.code !== 'PGRST116') { // PGRST116 = no rows returned
        throw fetchError;
      }

      let conversationId = existingConversations?.id;

      // 2. Si aucune conversation n'existe, en créer une
      if (!conversationId) {
        const { data: newConversation, error: createError } = await supabase
          .from('conversations')
          .insert({
            participant_1_id: user.id,
            participant_2_id: shop.ownerId,
            updated_at: new Date().toISOString() // Assurez-vous que cette colonne existe ou utilisez created_at par défaut
          })
          .select('id')
          .single();

        if (createError) throw createError;
        conversationId = newConversation.id;
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
        title: "Message envoyé !",
        description: `Votre message a été envoyé à ${shop.name}.`,
      });
      
      // Réinitialiser le formulaire
      setMessage('');
      
      // Fermer le modal
      setTimeout(() => {
        onClose();
        // Rediriger vers la messagerie avec la conversation ouverte
        navigate(`/messages?conversation=${conversationId}`);
      }, 1500);
      
    } catch (error) {
      console.error('Error sending message:', error);
      toast({
        title: "Erreur",
        description: "Une erreur est survenue lors de l'envoi de votre message. Veuillez réessayer.",
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
        {!user ? (
          <div className="py-8">
            <div className="flex flex-col gap-4 text-center">
              <div>
                <h3 className="text-lg font-bold">{t('auth.loginRequired')}</h3>
                <p className="text-sm text-muted-foreground mt-2">{t('auth.loginRequiredDesc')}</p>
              </div>
              <div className="flex flex-col sm:flex-row gap-2 justify-center">
                <Button
                  variant="secondary"
                  size="sm"
                  onClick={() => window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }))}
                  className="w-full sm:w-auto"
                >
                  {t('auth.login')}
                </Button>
                <Button
                  variant="outline"
                  size="sm"
                  onClick={() => window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'register' }))}
                  className="w-full sm:w-auto bg-transparent border-slate-200 dark:border-slate-700 hover:bg-slate-100 dark:hover:bg-slate-800 text-slate-900 dark:text-slate-100"
                >
                  {t('auth.register')}
                </Button>
              </div>
            </div>
          </div>
        ) : (
          <>
            <DialogHeader className="space-y-3 pb-4 border-b">
              <div className="mx-auto bg-primary/10 p-3 rounded-full w-fit">
                <MessageCircle className="h-6 w-6 text-primary" />
              </div>
              <DialogTitle className="text-center text-xl font-bold bg-clip-text text-transparent bg-gradient-to-r from-primary to-purple-600">
                Contacter {shop.name}
              </DialogTitle>
              <DialogDescription className="text-center text-sm px-4">
                Envoyez un message directement à la boutique.
              </DialogDescription>
            </DialogHeader>
            
            <div className="space-y-6 pt-4">
              {/* Informations de contact de la boutique */}
              <div className="bg-white dark:bg-gray-800 rounded-xl p-4 shadow-sm border border-gray-100 dark:border-gray-700 space-y-3">
                <h4 className="font-semibold text-sm text-center text-gray-500 mb-2 uppercase tracking-wider">Coordonnées</h4>
                
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
                  <span className="font-medium">{shop.wilaya}, Algérie</span>
                </div>
              </div>
              
              {/* Formulaire de contact */}
              <form onSubmit={handleSubmit} className="space-y-5">
                <div className="space-y-2">
                  <Label htmlFor="message" className="text-sm font-semibold ml-1">Votre message</Label>
                  <Textarea
                    id="message"
                    value={message}
                    onChange={(e) => setMessage(e.target.value)}
                    placeholder="Bonjour, je suis intéressé par..."
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
                    <>Envoi en cours...</>
                  ) : (
                    <>
                      <Send className="h-5 w-5 mr-2" />
                      Envoyer le message
                    </>
                  )}
                </Button>
              </form>
            </div>
          </>
        )}
      </DialogContent>
    </Dialog>
  );
};

export default ContactModal;
