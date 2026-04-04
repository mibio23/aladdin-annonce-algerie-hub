import React, { useState } from 'react';
import { Dialog, DialogContent, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { Textarea } from '@/components/ui/textarea';
import { Button } from '@/components/ui/button';
import { Star } from 'lucide-react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { useToast } from '@/components/ui/use-toast';

interface ShopReviewModalProps {
  shopId: string;
  open: boolean;
  onClose: () => void;
}

const ShopReviewModal: React.FC<ShopReviewModalProps> = ({ shopId, open, onClose }) => {
  const { user } = useAuth();
  const { t } = useSafeI18nWithRouter();
  const { toast } = useToast();
  const [rating, setRating] = useState<number>(0);
  const [hover, setHover] = useState<number>(0);
  const [comment, setComment] = useState<string>('');
  const [submitting, setSubmitting] = useState(false);

  const send = async () => {
    if (!user) {
      window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }));
      return;
    }
    if (rating < 1 || rating > 5) {
      toast({ title: t('reviews.ratingRequired') || 'Note requise', description: t('reviews.ratingRequiredDesc') || 'Veuillez choisir entre 1 et 5 étoiles.' });
      return;
    }
    try {
      setSubmitting(true);
      const { error } = await (supabase as any)
        .from('shop_reviews')
        .upsert({
          shop_id: shopId,
          user_id: user.id,
          rating,
          comment: comment && comment.trim().length > 0 ? comment.trim() : null
        }, { onConflict: 'shop_id,user_id' });
      if (error) throw error;
      toast({ title: t('reviews.submitted') || 'Avis envoyé', description: t('reviews.submittedDesc') || 'Votre avis a été envoyé avec succès.' });
      onClose();
    } catch {
      toast({ title: t('reviews.error') || 'Erreur', description: t('reviews.errorDesc') || "Une erreur est survenue." , variant: 'destructive' });
    } finally {
      setSubmitting(false);
    }
  };

  return (
    <Dialog open={open} onOpenChange={(v) => { if (!v) onClose(); }}>
      <DialogContent>
        <DialogHeader>
          <DialogTitle>{t('reviews.writeReview') || 'Écrire un avis'}</DialogTitle>
        </DialogHeader>
        <div className="space-y-4">
          <div className="flex items-center gap-2">
            <span className="text-sm font-medium">{t('reviews.rating') || 'Note'}:</span>
            <div className="flex items-center gap-1" onMouseLeave={() => setHover(0)}>
              {[1,2,3,4,5].map(s => (
                <button key={s} onClick={() => setRating(s)} onMouseEnter={() => setHover(s)} className="p-0.5">
                  <Star className={(hover || rating) >= s ? 'text-amber-500 fill-amber-500' : 'text-slate-300'} />
                </button>
              ))}
            </div>
          </div>
          <Textarea rows={4} value={comment} onChange={(e) => setComment(e.target.value)} placeholder={t('reviews.commentPlaceholder') || 'Décrivez votre expérience...'} />
          <div className="flex justify-end gap-2">
            <Button variant="outline" onClick={onClose}>{t('reviews.cancel') || 'Annuler'}</Button>
            <Button onClick={send} disabled={submitting}>{submitting ? (t('reviews.submitting') || 'Envoi...') : (t('reviews.submitReview') || 'Envoyer l\'avis')}</Button>
          </div>
        </div>
      </DialogContent>
    </Dialog>
  )
}

export default ShopReviewModal;
