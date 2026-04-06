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
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';

interface JobOfferContactModalProps {
  offer: {
    id: string;
    title: string;
    user_id?: string | null;
  } | null;
  onClose: () => void;
}

const JobOfferContactModal: React.FC<JobOfferContactModalProps> = ({ offer, onClose }) => {
  const [message, setMessage] = useState('');
  const [loading, setLoading] = useState(false);
  const { toast } = useToast();
  const { user } = useAuth();
  const navigate = useNavigate();
  const { t } = useSafeI18nWithRouter();
  const { getLocalizedPath } = useLanguageNavigation();

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    if (!offer || !offer.user_id) {
      toast({
        title: "Erreur",
        description: "Impossible de contacter le professionnel (Informations manquantes)",
        variant: "destructive"
      });
      return;
    }
    
    if (!user) {
      window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }));
      return;
    }

    if (offer.user_id === user.id) {
      toast({
        title: "Erreur",
        description: "Vous ne pouvez pas envoyer de message à vous-même.",
        variant: "destructive"
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
        .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${offer.user_id}),and(participant_1_id.eq.${offer.user_id},participant_2_id.eq.${user.id})`)
        .eq('subject_type', 'job_offer')
        .eq('subject_id', offer.id)
        .limit(1)
        .maybeSingle();

      if (fetchError) {
        throw fetchError;
      }

      let conversationId = existingConversations?.id;

      if (!conversationId) {
        const { data: participantConversation, error: participantFetchError } = await (supabase
          .from('conversations') as any)
          .select('id')
          .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${offer.user_id}),and(participant_1_id.eq.${offer.user_id},participant_2_id.eq.${user.id})`)
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
            participant_2_id: offer.user_id,
            subject_type: 'job_offer',
            subject_id: offer.id,
            title: offer.title,
            updated_at: new Date().toISOString()
          })
          .select('id')
          .single();

        if (createError) {
          const { data: fallbackConversation, error: fallbackError } = await (supabase
            .from('conversations') as any)
            .select('id')
            .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${offer.user_id}),and(participant_1_id.eq.${offer.user_id},participant_2_id.eq.${user.id})`)
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
        title: "Message envoyé !",
        description: `Votre message a été envoyé avec succès.`,
      });
      
      setMessage('');
      
      setTimeout(() => {
        onClose();
        navigate(getLocalizedPath(`/messages?conversation=${conversationId}`));
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


  if (!offer) return null;

  return (
    <Dialog open={!!offer} onOpenChange={(open) => !open && onClose()}>
      <DialogContent className="sm:max-w-md bg-gradient-to-b from-white to-gray-50 dark:from-gray-900 dark:to-gray-950 border-none shadow-2xl">
        <DialogHeader className="space-y-3 pb-4 border-b">
          <div className="mx-auto bg-primary/10 p-3 rounded-full w-fit">
            <MessageCircle className="h-6 w-6 text-primary" />
          </div>
          <DialogTitle className="text-center text-xl font-bold bg-clip-text text-transparent bg-gradient-to-r from-primary to-purple-600">
            Contacter le professionnel
          </DialogTitle>
          <DialogDescription className="text-center text-sm px-4">
            Envoyez un message concernant "{offer.title}"
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
                placeholder="Bonjour, je suis intéressé par vos services. Pouvez-vous me donner plus d'informations ?"
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
      </DialogContent>
    </Dialog>
  );
};

export default JobOfferContactModal;
