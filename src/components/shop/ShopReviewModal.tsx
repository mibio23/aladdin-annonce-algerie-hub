import React, { useEffect, useState } from 'react';
import { Dialog, DialogContent, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Textarea } from '@/components/ui/textarea';
import { Star } from 'lucide-react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { useToast } from '@/hooks/use-toast';
import { cn } from '@/lib/utils';

interface ShopReviewModalProps {
  isOpen: boolean;
  onClose: () => void;
  shopId: string;
  shopName: string;
  onReviewSubmitted: () => void | Promise<void>;
  existingReview?: {
    id: string;
    rating: number;
    comment?: string | null;
  } | null;
}

const ShopReviewModal: React.FC<ShopReviewModalProps> = ({ isOpen, onClose, shopId, shopName, onReviewSubmitted, existingReview }) => {
  const { user } = useAuth();
  const { toast } = useToast();
  const [rating, setRating] = useState(0);
  const [hoverRating, setHoverRating] = useState(0);
  const [comment, setComment] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);

  useEffect(() => {
    if (!isOpen) return;

    setRating(existingReview?.rating ?? 0);
    setComment(existingReview?.comment ?? '');
    setHoverRating(0);
  }, [isOpen, existingReview]);

  const handleSubmit = async () => {
    if (!user) {
      toast({
        title: 'Connexion requise',
        description: 'Vous devez être connecté pour laisser un avis.',
        variant: 'destructive',
      });
      window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }));
      onClose();
      return;
    }

    if (rating === 0) {
      toast({
        title: 'Note requise',
        description: 'Veuillez sélectionner une note entre 1 et 5 étoiles.',
        variant: 'destructive',
      });
      return;
    }

    setIsSubmitting(true);

    try {
      const payload = {
        shop_id: shopId,
        user_id: user.id,
        rating,
        comment: comment.trim() || null,
      };

      const { data: existingReview, error: existingReviewError } = await supabase
        .from('shop_reviews')
        .select('id')
        .eq('shop_id', shopId)
        .eq('user_id', user.id)
        .maybeSingle();

      if (existingReviewError) throw existingReviewError;

      if (existingReview?.id) {
        const { error: updateError } = await supabase
          .from('shop_reviews')
          .update({
            ...payload,
            updated_at: new Date().toISOString(),
          })
          .eq('id', existingReview.id);

        if (updateError) throw updateError;
      } else {
        const { error: insertError } = await supabase
          .from('shop_reviews')
          .insert(payload);

        if (insertError) throw insertError;
      }

      toast({
        title: existingReview ? 'Avis mis à jour' : 'Avis publié',
        description: existingReview
          ? 'Votre avis a bien été mis à jour.'
          : 'Merci d\'avoir partagé votre expérience !',
      });

      await onReviewSubmitted();
      onClose();
      setRating(0);
      setComment('');
    } catch (error) {
      console.error('Error submitting review:', error);
      const errorMessage =
        (error as { message?: string })?.message ||
        'Une erreur est survenue lors de l\'envoi de votre avis.';
      toast({
        title: 'Erreur',
        description: errorMessage,
        variant: 'destructive',
      });
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <Dialog open={isOpen} onOpenChange={onClose}>
      <DialogContent className="sm:max-w-[425px]">
        <DialogHeader>
          <DialogTitle className="text-xl font-bold">
            {existingReview ? `Modifier votre avis sur ${shopName}` : `Évaluer ${shopName}`}
          </DialogTitle>
        </DialogHeader>
        
        <div className="py-6 space-y-6">
          {existingReview && (
            <div className="rounded-2xl border border-orange-200 bg-orange-50 px-4 py-3 text-sm text-orange-700">
              Vous avez déjà laissé un avis sur cette boutique. Vous pouvez le modifier ici.
            </div>
          )}
          <div className="flex flex-col items-center gap-4">
            <p className="text-sm font-medium text-slate-500">Quelle est votre note globale ?</p>
            <div className="flex items-center gap-2">
              {[1, 2, 3, 4, 5].map((star) => (
                <button
                  key={star}
                  type="button"
                  onClick={() => setRating(star)}
                  onMouseEnter={() => setHoverRating(star)}
                  onMouseLeave={() => setHoverRating(0)}
                  className="p-1 focus:outline-none transition-transform hover:scale-110"
                >
                  <Star
                    className={cn(
                      "w-10 h-10 transition-colors",
                      (hoverRating || rating) >= star
                        ? "fill-yellow-500 text-yellow-500"
                        : "text-slate-300"
                    )}
                  />
                </button>
              ))}
            </div>
          </div>

          <div className="space-y-3">
            <label className="text-sm font-medium text-slate-700 dark:text-slate-300">
              Partagez votre expérience en détail (optionnel)
            </label>
            <Textarea
              placeholder="Comment s'est passée votre interaction avec cette boutique ?"
              value={comment}
              onChange={(e) => setComment(e.target.value)}
              className="min-h-[120px] resize-none"
            />
          </div>
        </div>

        <div className="flex justify-end gap-3 pt-4 border-t">
          <Button variant="outline" onClick={onClose} disabled={isSubmitting}>
            Annuler
          </Button>
          <Button 
            className="bg-orange-500 hover:bg-orange-600 text-white font-bold px-6" 
            onClick={handleSubmit}
            disabled={isSubmitting || rating === 0}
          >
            {isSubmitting ? 'Envoi...' : existingReview ? 'Mettre à jour mon avis' : 'Publier l\'avis'}
          </Button>
        </div>
      </DialogContent>
    </Dialog>
  );
};

export default ShopReviewModal;
