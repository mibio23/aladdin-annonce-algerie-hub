import React, { useEffect, useState, useCallback } from 'react';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { Progress } from '@/components/ui/progress';
import { useToast } from '@/hooks/use-toast';
import { useAuth } from '@/contexts/useAuth';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { LocalizedLink } from '@/utils/linkUtils';

const ParrainagePage: React.FC = () => {
  const { user } = useAuth();
  const { t } = useSafeI18nWithRouter();
  const { toast } = useToast();

  const [points, setPoints] = useState<number>(0);
  const [count, setCount] = useState<number>(0);
  const [loading, setLoading] = useState<boolean>(false);

  const loadProfile = useCallback(async () => {
    if (!user) return;
    // Note: referral_points and referral_count columns don't exist in profiles table yet
    // Using placeholder values until the migration is applied
    setPoints(0);
    setCount(0);
  }, [user]);

  useEffect(() => {
    loadProfile();
  }, [loadProfile]);

  const handleShare = async () => {
    const shareUrl = window.location.origin;
    try {
      setLoading(true);
      if (navigator.share) {
        await navigator.share({ title: 'AL@DDIN', text: t('parrainage.shareText'), url: shareUrl });
      } else {
        await navigator.clipboard.writeText(shareUrl);
        toast({ title: t('parrainage.linkCopied'), description: t('parrainage.linkCopiedDesc') });
      }

      // Note: Referral system not yet implemented - columns don't exist
      // Just update local state for now
      if (user) {
        const newCount = count + 1;
        const newPoints = points + 10;
        setCount(newCount);
        setPoints(newPoints);
        toast({ title: t('parrainage.thanksShare'), description: t('parrainage.pointsEarned') });
      }
    } finally {
      setLoading(false);
    }
  };

  const progress = Math.min(count, 10) * 10;
  const canPremium = points >= 100;

  return (
    <div className="min-h-screen bg-background py-8">
      <div className="container mx-auto px-4 max-w-3xl">
        <Card>
          <CardHeader>
            <CardTitle>{t('parrainage.title')}</CardTitle>
          </CardHeader>
          <CardContent className="space-y-4">
            <div className="text-sm text-muted-foreground">
              {t('parrainage.description')}
            </div>

            <div className="grid grid-cols-2 gap-4">
              <div className="p-4 border rounded-lg">
                <div className="text-xs text-muted-foreground">{t('parrainage.shares')}</div>
                <div className="text-2xl font-bold">{count}</div>
              </div>
              <div className="p-4 border rounded-lg">
                <div className="text-xs text-muted-foreground">{t('parrainage.points')}</div>
                <div className="text-2xl font-bold">{points}</div>
              </div>
            </div>

            <Progress value={progress} />

            <div className="flex items-center gap-2">
              {canPremium ? (
                <Badge variant="outline" className="text-green-600 border-green-600">{t('parrainage.premiumUnlocked')}</Badge>
              ) : (
                <Badge variant="secondary">{t('parrainage.goal')}</Badge>
              )}
            </div>

            <Button onClick={handleShare} disabled={loading} className="w-full">
              {loading ? t('parrainage.processing') : t('parrainage.share')}
            </Button>

            <div className="pt-2">
              <Button asChild variant="outline" className="w-full">
                <LocalizedLink to="/deposer-annonce">{t('parrainage.postAd')}</LocalizedLink>
              </Button>
            </div>
          </CardContent>
        </Card>
      </div>
    </div>
  );
};

export default ParrainagePage;

