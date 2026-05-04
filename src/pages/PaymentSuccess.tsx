import React, { useEffect, useState } from 'react';
import { useSearchParams, useNavigate } from 'react-router-dom';
import { LocalizedLink } from '@/utils/linkUtils';
import { useLanguageFromURL } from '@/hooks/useLanguageFromURL';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { CheckCircle, ArrowRight, Eye, MessageCircle, Star } from 'lucide-react';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { useToast } from '@/hooks/use-toast';
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';

const PaymentSuccessPage: React.FC = () => {
  const [searchParams] = useSearchParams();
  const navigate = useNavigate();
  const { toast } = useToast();
  const { getLocalizedPath } = useLanguageFromURL();
  const { t } = useSafeI18nWithRouter();
  interface AnnouncementDetails {
    id: string;
    title: string;
    description?: string;
    price?: number;
    currency?: string;
    location?: string;
    wilaya?: string;
    is_featured?: boolean;
    is_urgent?: boolean;
    is_active?: boolean;
    type?: string;
  }
  const [announcementDetails, setAnnouncementDetails] = useState<AnnouncementDetails | null>(null);
  const [loading, setLoading] = useState(true);

  const sessionId = searchParams.get('session_id');
  const announcementId = searchParams.get('announcement_id');
  const paymentType = searchParams.get('payment_type');
  const mode = searchParams.get('mode') || 'stripe';

  useEffect(() => {
    const verifyAndFetch = async () => {
      try {
        if (mode === 'algerian') {
          if (!announcementId || !paymentType) {
            setLoading(false);
            return;
          }
          const { error: vError } = await supabase.functions.invoke('verify-algerian-payment', {
            body: { announcement_id: announcementId, payment_type: paymentType }
          });
          if (vError) throw vError;
        } else {
          if (!sessionId) {
            setLoading(false);
            return;
          }
          const { error: vError } = await supabase.functions.invoke('verify-payment', {
            body: { session_id: sessionId }
          });
          if (vError) throw vError;
        }

        if (!announcementId) {
          setLoading(false);
          return;
        }

        const { data, error } = await supabase
          .from('announcements')
          .select('*')
          .eq('id', announcementId)
          .single();

        if (error) {
          logger.error('Error fetching announcement:', error);
          toast({
            title: t('common.error'),
            description: t('payment.fetchError'),
            variant: "destructive",
          });
        } else {
          setAnnouncementDetails(data as AnnouncementDetails);
        }
      } catch (error) {
        logger.error('Error:', error);
      } finally {
        setLoading(false);
      }
    };

    verifyAndFetch();
  }, [announcementId, sessionId, paymentType, mode, toast]);

  const getPaymentTypeInfo = () => {
    switch (paymentType) {
      case 'featured':
        return {
          title: t('payment.featured.title'),
          description: t('payment.featured.description'),
          icon: <Star className="h-6 w-6 text-yellow-500" />,
          badge: <Badge variant="default" className="bg-yellow-500">{t('payment.featured.badge')}</Badge>
        };
      case 'urgent':
        return {
          title: t('payment.urgent.title'),
          description: t('payment.urgent.description'),
          icon: <ArrowRight className="h-6 w-6 text-red-500" />,
          badge: <Badge variant="destructive">{t('payment.urgent.badge')}</Badge>
        };
      default:
        return {
          title: t('payment.promotion.title'),
          description: t('payment.promotion.description'),
          icon: <CheckCircle className="h-6 w-6 text-green-500" />,
          badge: <Badge variant="default">{t('payment.promotion.badge')}</Badge>
        };
    }
  };

  const paymentInfo = getPaymentTypeInfo();

  if (loading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="animate-spin rounded-full h-32 w-32 border-b-2 border-primary"></div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background py-8">
      <div className="container mx-auto px-4 max-w-4xl">
        {/* Success Header */}
        <div className="text-center mb-8">
          <CheckCircle className="h-16 w-16 text-green-500 mx-auto mb-4" />
          <h1 className="text-3xl font-bold text-foreground mb-2">
            {t('payment.confirmed')}
          </h1>
          <p className="text-lg text-muted-foreground">
            {t('payment.transactionSuccess')}
          </p>
        </div>

        <div className="grid gap-6 md:grid-cols-2">
          {/* Payment Details */}
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                {paymentInfo.icon}
                {paymentInfo.title}
              </CardTitle>
              <CardDescription>
                {paymentInfo.description}
              </CardDescription>
            </CardHeader>
            <CardContent className="space-y-4">
              {sessionId && (
                <div>
                  <label className="text-sm font-medium text-muted-foreground">
                    {t('payment.transactionId')}
                  </label>
                  <p className="text-sm font-mono bg-muted p-2 rounded">
                    {sessionId}
                  </p>
                </div>
              )}
              
              <div className="flex items-center gap-2">
                <span className="text-sm font-medium">{t('payment.statusLabel')}</span>
                {paymentInfo.badge}
              </div>

              <div className="pt-4 space-y-2">
                <Button asChild className="w-full">
                  <LocalizedLink to="/my-announcements">
                    <Eye className="h-4 w-4 mr-2" />
                    {t('payment.viewMyAds')}
                  </LocalizedLink>
                </Button>
                
                <Button variant="outline" asChild className="w-full">
                  <LocalizedLink to="/chat">
                    <MessageCircle className="h-4 w-4 mr-2" />
                    {t('payment.manageMessages')}
                  </LocalizedLink>
                </Button>
              </div>
            </CardContent>
          </Card>

          {/* Announcement Details */}
          {announcementDetails && (
            <Card>
              <CardHeader>
                <CardTitle>{t('payment.adDetails')}</CardTitle>
                <CardDescription>
                  {t('payment.adPromoted')}
                </CardDescription>
              </CardHeader>
              <CardContent className="space-y-4">
                <div>
                  <h3 className="font-medium text-foreground mb-2">
                    {announcementDetails.title}
                  </h3>
                  <p className="text-sm text-muted-foreground line-clamp-3">
                    {announcementDetails.description}
                  </p>
                </div>

                {announcementDetails.price && (
                  <div className="flex items-center justify-between">
                    <span className="text-sm font-medium">{t('payment.priceLabel')}</span>
                    <span className="text-lg font-bold text-primary">
                      {announcementDetails.price} {announcementDetails.currency}
                    </span>
                  </div>
                )}

                <div className="flex items-center justify-between">
                  <span className="text-sm font-medium">{t('payment.locationLabel')}</span>
                  <span className="text-sm">
                    {announcementDetails.location}, {announcementDetails.wilaya}
                  </span>
                </div>

                <div className="flex gap-2 flex-wrap">
                  {announcementDetails.is_featured && (
                    <Badge variant="default" className="bg-yellow-500">
                      {t('payment.featured.badge')}
                    </Badge>
                  )}
                  {announcementDetails.is_urgent && (
                    <Badge variant="destructive">
                      Urgent
                    </Badge>
                  )}
                  {announcementDetails.is_active && (
                    <Badge variant="outline" className="text-green-600 border-green-600">
                      Active
                    </Badge>
                  )}
                  {announcementDetails.type === 'premium' && (
                    <Badge variant="secondary">Premium</Badge>
                  )}
                </div>

                <Button 
                  asChild 
                  variant="outline" 
                  className="w-full"
                >
                  <LocalizedLink to={`/announcement/${announcementDetails.id}`}>
                    {t('payment.viewPublicAd')}
                  </LocalizedLink>
                </Button>
              </CardContent>
            </Card>
          )}
        </div>

        {/* Next Steps */}
        <Card className="mt-8">
          <CardHeader>
            <CardTitle>{t('payment.nextSteps')}</CardTitle>
            <CardDescription>
              {t('payment.nextStepsDesc')}
            </CardDescription>
          </CardHeader>
          <CardContent>
            <div className="grid gap-4 md:grid-cols-3">
              <div className="text-center p-4 rounded-lg bg-muted/50">
                <Eye className="h-8 w-8 mx-auto mb-2 text-primary" />
                <h4 className="font-medium mb-1">{t('payment.monitorViews')}</h4>
                <p className="text-sm text-muted-foreground">
                  {t('payment.monitorViewsDesc')}
                </p>
              </div>
              
              <div className="text-center p-4 rounded-lg bg-muted/50">
                <MessageCircle className="h-8 w-8 mx-auto mb-2 text-primary" />
                <h4 className="font-medium mb-1">{t('payment.respondQuickly')}</h4>
                <p className="text-sm text-muted-foreground">
                  {t('payment.respondQuicklyDesc')}
                </p>
              </div>
              
              <div className="text-center p-4 rounded-lg bg-muted/50">
                <Star className="h-8 w-8 mx-auto mb-2 text-primary" />
                <h4 className="font-medium mb-1">{t('payment.addPhotos')}</h4>
                <p className="text-sm text-muted-foreground">
                  {t('payment.addPhotosDesc')}
                </p>
              </div>
            </div>
          </CardContent>
        </Card>

        {/* Footer Actions */}
        <div className="text-center mt-8">
          <Button 
            variant="outline" 
            onClick={() => navigate(getLocalizedPath('/'))}
            className="mr-4"
          >
            {t('payment.backHome')}
          </Button>
          
          <Button asChild>
            <LocalizedLink to="/deposer-annonce">
              {t('payment.createNewAd')}
            </LocalizedLink>
          </Button>
        </div>
      </div>
    </div>
  );
};

export default PaymentSuccessPage;
