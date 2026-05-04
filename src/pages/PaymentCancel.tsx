import React from 'react';
import { LocalizedLink } from '@/utils/linkUtils';
import { XCircle, ArrowLeft, RefreshCw } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';

const PaymentCancel: React.FC = () => {
  const { t } = useSafeI18nWithRouter();

  return (
    <div className="min-h-[80vh] flex items-center justify-center px-4">
      <Card className="w-full max-w-md">
        <CardHeader className="text-center">
          <div className="flex justify-center mb-4">
            <XCircle className="w-16 h-16 text-red-500" />
          </div>
          <CardTitle className="text-2xl">{t('paymentCancel.title')}</CardTitle>
        </CardHeader>
        <CardContent className="space-y-6 text-center">
          <p className="text-gray-600">
            {t('paymentCancel.description')}
          </p>
          
          <div className="bg-blue-50 border border-blue-200 rounded-lg p-4">
            <h3 className="font-medium text-blue-800 mb-2">{t('paymentCancel.whyPromote')}</h3>
            <ul className="text-sm text-blue-700 space-y-1 text-left">
              <li>• {t('paymentCancel.benefit1')}</li>
              <li>• {t('paymentCancel.benefit2')}</li>
              <li>• {t('paymentCancel.benefit3')}</li>
              <li>• {t('paymentCancel.benefit4')}</li>
            </ul>
          </div>

          <div className="space-y-3">
            <Button asChild className="w-full">
              <LocalizedLink to="/mes-annonces">
                <RefreshCw className="w-4 h-4 mr-2" />
                {t('paymentCancel.retry')}
              </LocalizedLink>
            </Button>
            <Button variant="outline" asChild className="w-full">
              <LocalizedLink to="/">
                <ArrowLeft className="w-4 h-4 mr-2" />
                {t('paymentCancel.backHome')}
              </LocalizedLink>
            </Button>
          </div>

          <div className="text-sm text-gray-500">
            <p>{t('paymentCancel.needHelp')} <LocalizedLink to="/contact" className="text-blue-600 hover:underline">{t('paymentCancel.contactUs')}</LocalizedLink></p>
          </div>
        </CardContent>
      </Card>
    </div>
  );
};

export default PaymentCancel;