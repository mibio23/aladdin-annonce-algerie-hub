import React, { useState } from 'react';
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { useAuth } from "@/contexts/useAuth";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Loader2, Mail, ArrowLeft } from "lucide-react";

interface ForgotPasswordFormProps {
  onMessage: (message: { type: 'success' | 'error'; text: string } | null) => void;
  onBack: () => void;
}

const ForgotPasswordForm: React.FC<ForgotPasswordFormProps> = ({ onMessage, onBack }) => {
  const { t } = useSafeI18nWithRouter();
  const { resetPassword } = useAuth();
  const [email, setEmail] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const [isSent, setIsSent] = useState(false);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!email) return;

    setIsLoading(true);
    onMessage(null);

    try {
      const { error } = await resetPassword(email);
      if (error) {
        onMessage({ type: 'error', text: error.message });
      } else {
        setIsSent(true);
        onMessage({ 
          type: 'success', 
          text: t('auth.resetPasswordSent')
        });
      }
    } catch {
      onMessage({ 
        type: 'error', 
        text: t('auth.errors.generic')
      });
    } finally {
      setIsLoading(false);
    }
  };

  if (isSent) {
    return (
      <div className="space-y-6 text-center py-4">
        <div className="flex justify-center">
          <div className="h-16 w-16 bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center text-green-600 dark:text-green-400">
            <Mail className="h-8 w-8" />
          </div>
        </div>
        <div className="space-y-2">
          <h3 className="text-xl font-bold">{t('auth.checkEmail')}</h3>
          <p className="text-muted-foreground">
            {t('auth.resetPasswordInstructions')} <span className="font-semibold text-foreground">{email}</span>.
          </p>
        </div>
        <Button 
          variant="outline" 
          className="w-full h-12 rounded-xl font-bold"
          onClick={onBack}
        >
          {t('auth.backToLogin')}
        </Button>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <div className="space-y-2">
        <p className="text-sm text-muted-foreground">
          {t('auth.forgotPasswordDescription')}
        </p>
      </div>

      <form onSubmit={handleSubmit} className="space-y-4">
        <div className="space-y-2">
          <Label htmlFor="reset-email">{t('connexion.email')}</Label>
          <div className="relative">
            <Mail className="absolute left-3 top-3 h-4 w-4 text-muted-foreground" />
            <Input
              id="reset-email"
              type="email"
              placeholder={t('connexion.emailPlaceholder')}
              className="pl-10 h-11 rounded-xl"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              required
              disabled={isLoading}
            />
          </div>
        </div>

        <Button 
          type="submit" 
          className="w-full h-12 rounded-xl font-bold transition-all"
          disabled={isLoading}
        >
          {isLoading ? (
            <>
              <Loader2 className="mr-2 h-4 w-4 animate-spin" />
              {t('auth.sending')}
            </>
          ) : (
            t('auth.sendResetLink')
          )}
        </Button>

        <Button 
          type="button" 
          variant="ghost" 
          className="w-full h-10 rounded-xl font-medium text-muted-foreground hover:text-foreground"
          onClick={onBack}
          disabled={isLoading}
        >
          <ArrowLeft className="mr-2 h-4 w-4" />
          {t('auth.backToLogin')}
        </Button>
      </form>
    </div>
  );
};

export default ForgotPasswordForm;
