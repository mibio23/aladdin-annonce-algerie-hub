import React, { useState, useEffect } from 'react';
import { Dialog, DialogContent, DialogDescription, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { MessageCircle, Send } from 'lucide-react';
import { useToast } from '@/hooks/use-toast';
import { useAuth } from '@/contexts/useAuth';
import { supabase } from '@/integrations/supabase/client';
import { useNavigate } from 'react-router-dom';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';

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
  const { t } = useSafeI18nWithRouter();

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    if (!announcement || !announcement.user_id) {
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
      
      // 1. Check if conversation exists (with specific subject)
      const { data: existingConversations, error: fetchError } = await (supabase
        .from('conversations') as any)
        .select('id')
        .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${announcement.user_id}),and(participant_1_id.eq.${announcement.user_id},participant_2_id.eq.${user.id})`)
        .eq('subject_type', 'ad')
        .eq('subject_id', announcement.id)
        .single();

      if (fetchError && fetchError.code !== 'PGRST116') { // PGRST116 = no rows returned
        throw fetchError;
      }

      let conversationId = existingConversations?.id;

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

        if (createError) throw createError;
        conversationId = newConversation.id;
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
        title: "Message envoyé !",
        description: `Votre message a été envoyé au vendeur.`,
      });
      
      setMessage('');
      
      setTimeout(() => {
        onClose();
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
  }, [user, announcement, onClose]);

  if (!announcement) return null;

  return (
    <Dialog open={!!announcement} onOpenChange={(open) => !open && onClose()}>
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
                Contacter le vendeur
              </DialogTitle>
              <DialogDescription className="text-center text-sm px-4">
                Envoyez un message concernant "{announcement.title}"
              </DialogDescription>
            </DialogHeader>
            
            <div className="space-y-6 pt-4">
              <form onSubmit={handleSubmit} className="space-y-5">
                <div className="space-y-2">
                  <Label htmlFor="message" className="text-sm font-semibold ml-1">Votre message</Label>
                  <Textarea
                    id="message"
                    value={message}
                    onChange={(e) => setMessage(e.target.value)}
                    placeholder="Bonjour, votre annonce m'intéresse. Est-elle toujours disponible ?"
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

export default AnnouncementContactModal;
