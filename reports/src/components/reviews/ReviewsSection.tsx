import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Star } from 'lucide-react';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';

interface ReviewsSectionProps {
  reviewedUserId: string;
}

const ReviewsSection: React.FC<ReviewsSectionProps> = ({ reviewedUserId: _reviewedUserId }) => {
  const { t } = useSafeI18nWithRouter();

  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <Star className="h-5 w-5" />
          {t('reviews.title')}
        </CardTitle>
      </CardHeader>
      <CardContent>
        <div className="text-center py-12 text-muted-foreground">
          <Star className="h-12 w-12 mx-auto mb-4 opacity-50" />
          <p>{t('reviews.noReviews')}</p>
          <p className="text-sm">{t('reviews.beFirst')}</p>
        </div>
      </CardContent>
    </Card>
  );
};

export default ReviewsSection;
