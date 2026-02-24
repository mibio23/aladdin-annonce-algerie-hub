import React from 'react';
import { Phone } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';

interface SecureContactButtonProps {
  announcementId: string;
  phoneNumberMasked?: string | null;
  requiresAuthForContact: boolean;
  className?: string;
}

const SecureContactButton: React.FC<SecureContactButtonProps> = (props) => {
  const { phoneNumberMasked, className = "" } = props;
  const { t } = useSafeI18nWithRouter();

  const normalizePhone = (value?: string | null) => {
    if (!value) return '';
    const first = value.split(',')[0]?.trim() || '';
    if (!first) return '';
    const hasPlus = first.startsWith('+');
    const digits = first.replace(/\D/g, '');
    if (!digits) return '';
    return hasPlus ? `+${digits}` : digits;
  };

  const normalizedPhone = normalizePhone(phoneNumberMasked);

  const handleContactClick = () => {
    if (normalizedPhone) {
      window.location.href = `tel:${normalizedPhone}`;
    }
  };

  return (
    <>
      <Button
        className={`w-full text-lg py-3 ${className}`}
        onClick={handleContactClick}
        disabled={!normalizedPhone}
      >
        <Phone className="h-5 w-5 mr-2" />
        {t('announcements.contactSeller')}
      </Button>

      {phoneNumberMasked && (
        <div className="text-center text-sm text-muted-foreground mt-2 flex items-center justify-center gap-2">
          <span>{phoneNumberMasked}</span>
        </div>
      )}
    </>
  );
};

export default SecureContactButton;
