import React from 'react';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { CreditCard, Loader2 } from 'lucide-react';
import { useToast } from '@/hooks/use-toast';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { logger } from '@/utils/silentLogger';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';

interface StripeCheckoutButtonProps {
  announcementId?: string;
  paymentType: 'featured' | 'urgent';
  price: number;
  description: string;
  className?: string;
  disabled?: boolean;
}

const StripeCheckoutButton: React.FC<StripeCheckoutButtonProps> = ({
  announcementId,
  paymentType,
  price,
  description: _description,
  className = "",
  disabled = false
}) => {
  const { toast } = useToast();
  const { t } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const [loading, setLoading] = React.useState(false);

  const handlePayment = async () => {
    if (!user) {
      toast({
        title: t('auth.loginRequired'),
        description: t('auth.loginRequiredDesc'),
      });
      return;
    }

    try {
      setLoading(true);

      const { data, error } = await supabase.functions.invoke('create-payment', {
        body: {
          payment_type: paymentType,
          announcement_id: announcementId,
          amount: price
        }
      });

      if (error) throw error;

      if (data?.url) {
        // Open Stripe checkout in a new tab
        window.open(data.url, '_blank');
        
        toast({
          title: "Redirection vers le paiement",
          description: "Vous allez être redirigé vers la page de paiement sécurisée",
        });
      }
    } catch (error) {
      logger.error('Payment error:', error);
      toast({
        title: "Erreur de paiement",
        description: error instanceof Error ? error.message : "Une erreur est survenue",
        variant: "destructive"
      });
    } finally {
      setLoading(false);
    }
  };

  return (
    <Button
      onClick={handlePayment}
      disabled={loading || disabled}
      className={`w-full ${className}`}
    >
      {loading ? (
        <Loader2 className="w-4 h-4 mr-2 animate-spin" />
      ) : (
        <CreditCard className="w-4 h-4 mr-2" />
      )}
      {loading ? 'Traitement...' : `Payer ${price} DA`}
    </Button>
  );
};

interface PaymentSectionProps {
  announcementId: string;
  className?: string;
}

const PaymentSection: React.FC<PaymentSectionProps> = ({ 
  announcementId, 
  className = "" 
}) => {
  const { toast } = useToast();

  const handleAlgerianPayment = async (paymentType: 'featured' | 'urgent', cardType: 'eddahabia' | 'cib') => {
    try {
      const { data, error } = await supabase.functions.invoke('create-algerian-payment', {
        body: {
          payment_type: paymentType,
          announcement_id: announcementId,
          card_type: cardType
        }
      });

      if (error) throw error;
      if (data?.url) {
        window.open(data.url, '_blank');
        toast({ title: 'Redirection', description: 'Vers la page de paiement Algérien' });
      }
    } catch (error) {
      logger.error('Algerian payment error:', error);
      toast({ title: 'Erreur', description: 'Paiement Algérien indisponible', variant: 'destructive' });
    }
  };
  return (
    <Card className={className}>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <CreditCard className="h-5 w-5" />
          Promouvoir cette annonce
        </CardTitle>
      </CardHeader>
      <CardContent className="space-y-4">
        <div className="space-y-3">
          <div className="p-4 border rounded-lg">
            <h4 className="font-semibold text-yellow-600 mb-2">⭐ Mettre à la Une</h4>
            <p className="text-sm text-muted-foreground mb-3">
              Votre annonce apparaîtra en premier dans les résultats de recherche
            </p>
            <StripeCheckoutButton
              announcementId={announcementId}
              paymentType="featured"
              price={500}
              description="Promotion à la une"
              className="bg-yellow-600 hover:bg-yellow-700"
            />
            <div className="grid grid-cols-2 gap-2 mt-2">
              <Button variant="outline" onClick={() => handleAlgerianPayment('featured', 'eddahabia')}>Eddahabia</Button>
              <Button variant="outline" onClick={() => handleAlgerianPayment('featured', 'cib')}>CIB</Button>
            </div>
          </div>

          <div className="p-4 border rounded-lg">
            <h4 className="font-semibold text-red-600 mb-2">🚨 Marquer Urgent</h4>
            <p className="text-sm text-muted-foreground mb-3">
              Badge urgent visible sur votre annonce pour attirer l'attention
            </p>
            <StripeCheckoutButton
              announcementId={announcementId}
              paymentType="urgent"
              price={300}
              description="Badge urgent"
              className="bg-red-600 hover:bg-red-700"
            />
            <div className="grid grid-cols-2 gap-2 mt-2">
              <Button variant="outline" onClick={() => handleAlgerianPayment('urgent', 'eddahabia')}>Eddahabia</Button>
              <Button variant="outline" onClick={() => handleAlgerianPayment('urgent', 'cib')}>CIB</Button>
            </div>
          </div>
        </div>

        <div className="text-xs text-muted-foreground">
          <p>✅ Paiement sécurisé par Stripe et modes Algériens</p>
          <p>✅ Activation immédiate</p>
          <p>✅ Support client 24/7</p>
        </div>
      </CardContent>
    </Card>
  );
};

export { StripeCheckoutButton, PaymentSection };
