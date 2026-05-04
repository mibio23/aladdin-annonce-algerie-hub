import React, { useEffect, useState } from 'react';
import { Dialog, DialogContent, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Textarea } from '@/components/ui/textarea';
import { Star } from 'lucide-react';
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';
import { useAuth } from '@/contexts/useAuth';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
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
  const { t } = useSafeI18nWithRouter();
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
        title: t('shopReview.loginRequired'),
        description: t('shopReview.loginRequiredDesc'),
        variant: 'destructive',
      });
      window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }));
      onClose();
      return;
    }

    if (rating === 0) {
      toast({
        title: t('shopReview.ratingRequired'),
        description: t('shopReview.ratingRequiredDesc'),
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
        title: existingReview ? t('shopReview.updated') : t('shopReview.published'),
        description: existingReview
          ? t('shopReview.updatedDesc')
          : t('shopReview.publishedDesc'),
      });

      await onReviewSubmitted();
      onClose();
      setRating(0);
      setComment('');
    } catch (error) {
      logger.error('Error submitting review:', error);
      const errorMessage =
        (error as { message?: string })?.message ||
        t('shopReview.errorDesc');
      toast({
        title: t('shopReview.error'),
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
            {existingReview ? `${t('shopReview.editTitle')} ${shopName}` : `${t('shopReview.rateTitle')} ${shopName}`}
          </DialogTitle>
        </DialogHeader>
        
        <div className="py-6 space-y-6">
          {existingReview && (
            <div className="rounded-2xl border border-orange-200 bg-orange-50 px-4 py-3 text-sm text-orange-700">
              {t('shopReview.alreadyReviewed')}
            </div>
          )}
          <div className="flex flex-col items-center gap-4">
            <p className="text-sm font-medium text-slate-500">{t('shopReview.ratingQuestion')}</p>
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
              {t('shopReview.shareExperience')}
            </label>
            <Textarea
              placeholder={t('shopReview.placeholder')}
              value={comment}
              onChange={(e) => setComment(e.target.value)}
              className="min-h-[120px] resize-none"
            />
          </div>
        </div>

        <div className="flex justify-end gap-3 pt-4 border-t">
          <Button variant="outline" onClick={onClose} disabled={isSubmitting}>
            {t('common.cancel')}
          </Button>
          <Button 
            className="bg-orange-500 hover:bg-orange-600 text-white font-bold px-6" 
            onClick={handleSubmit}
            disabled={isSubmitting || rating === 0}
          >
            {isSubmitting ? t('common.sending') : existingReview ? t('shopReview.updateBtn') : t('shopReview.publishBtn')}
          </Button>
        </div>
      </DialogContent>
    </Dialog>
  );
};

export default ShopReviewModal;
