
import React, { useState } from 'react';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { useAuth } from '@/contexts/useAuth';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Checkbox } from '@/components/ui/checkbox';
import { Mail, Lock, Eye, EyeOff, Loader2 } from 'lucide-react';
import Captcha from '@/components/ui/captcha';
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';

interface LoginFormProps {
  onMessage: (message: { type: 'success' | 'error'; text: string } | null) => void;
  onSuccess?: () => void;
  onForgotPassword?: () => void;
}

const LoginForm: React.FC<LoginFormProps> = ({ onMessage, onSuccess, onForgotPassword }) => {
  const { t } = useSafeI18nWithRouter();
  const { signIn, loading } = useAuth();
  const [showPassword, setShowPassword] = useState(false);
  const [formData, setFormData] = useState({
    email: '',
    password: '',
    rememberMe: false
  });
  const [isCaptchaValid, setIsCaptchaValid] = useState(false);
  const [oauthLoading, setOauthLoading] = useState<string | null>(null);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!isCaptchaValid) {
      onMessage({ type: 'error', text: t('captcha.error') });
      return;
    }
    
    try {
      const { error } = await signIn(formData.email, formData.password);
      if (error) {
        let errorMessage = t('auth.errors.loginFailed');
        
        if (error.message.includes('Invalid login credentials')) {
          errorMessage = t('auth.errors.invalidCredentials');
        } else if (error.message.includes('Email not confirmed')) {
          errorMessage = t('auth.errors.emailNotConfirmed');
        }
        
        onMessage({ type: 'error', text: errorMessage });
      } else {
        onMessage({ type: 'success', text: t('auth.success.loginSuccess') });
        if (onSuccess) onSuccess();
      }
    } catch {
      onMessage({ type: 'error', text: t('auth.errors.loginFailed') });
    }
  };

  const handleInputChange = (field: string, value: string | boolean) => {
    setFormData(prev => ({ ...prev, [field]: value }));
  };

  const handleOAuthSignIn = async (provider: 'google' | 'facebook') => {
    try {
      setOauthLoading(provider);
      const { error } = await supabase.auth.signInWithOAuth({
        provider,
        options: {
          redirectTo: `${window.location.origin}/`
        }
      });
      if (error) {
        logger.error('OAuth sign-in error:', error.message);
        onMessage({ type: 'error', text: t('auth.errors.oauthFailed') });
      }
    } catch (err) {
      logger.error('Unexpected OAuth error:', err);
      onMessage({ type: 'error', text: t('auth.errors.oauthFailed') });
    } finally {
      setOauthLoading(null);
    }
  };

  return (
    <div className="space-y-6">
      <form onSubmit={handleSubmit} className="space-y-4">
        <div className="space-y-2">
          <Label htmlFor="email-drawer">{t('connexion.email')}</Label>
          <div className="relative">
            <Mail className="absolute left-3 top-3 h-4 w-4 text-muted-foreground" />
            <Input
              id="email-drawer"
              type="email"
              placeholder={t('connexion.emailPlaceholder')}
              value={formData.email}
              onChange={(e) => handleInputChange('email', e.target.value)}
              className="pl-10"
              required
            />
          </div>
        </div>

        <div className="space-y-2">
          <Label htmlFor="password-drawer">{t('connexion.password')}</Label>
          <div className="relative">
            <Lock className="absolute left-3 top-3 h-4 w-4 text-muted-foreground" />
            <Input
              id="password-drawer"
              type={showPassword ? "text" : "password"}
              placeholder={t('connexion.passwordPlaceholder')}
              value={formData.password}
              onChange={(e) => handleInputChange('password', e.target.value)}
              className="pl-10 pr-10"
              required
            />
            <button
              type="button"
              onClick={() => setShowPassword(!showPassword)}
              className="absolute right-3 top-3 text-muted-foreground hover:text-foreground"
            >
              {showPassword ? <EyeOff className="h-4 w-4" /> : <Eye className="h-4 w-4" />}
            </button>
          </div>
        </div>

        <div className="flex items-center justify-between">
          <div className="flex items-center space-x-2">
            <Checkbox
              id="rememberMe-drawer"
              checked={formData.rememberMe}
              onCheckedChange={(checked) => handleInputChange('rememberMe', checked as boolean)}
            />
            <Label htmlFor="rememberMe-drawer" className="text-sm font-normal">
              {t('connexion.rememberMe')}
            </Label>
          </div>
          {onForgotPassword ? (
            <button 
              type="button"
              onClick={onForgotPassword}
              className="text-sm text-primary hover:underline font-medium"
            >
              {t('connexion.forgotPassword')}
            </button>
          ) : (
            <button 
              type="button"
              onClick={() => {
                // Si on est déjà dans le drawer, on change d'onglet
                // Sinon on redirige vers l'accueil avec l'état
                window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'forgot-password' }));
              }}
              className="text-sm text-primary hover:underline font-medium"
            >
              {t('connexion.forgotPassword')}
            </button>
          )}
        </div>

        <Captcha 
          onValidation={setIsCaptchaValid}
          className="mt-4"
        />

        <Button 
          type="submit" 
          className="w-full h-11" 
          disabled={!isCaptchaValid || loading}
        >
          {loading ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : null}
          {t('connexion.submit')}
        </Button>
      </form>

      <div className="relative">
        <div className="absolute inset-0 flex items-center">
          <span className="w-full border-t" />
        </div>
        <div className="relative flex justify-center text-xs uppercase">
          <span className="bg-background px-2 text-muted-foreground">
            {t('connexion.or')}
          </span>
        </div>
      </div>

      <div className="grid grid-cols-1 gap-4">
        <Button
          type="button"
          variant="outline"
          className="w-full h-12 rounded-xl border-border/60 hover:bg-muted/50 transition-all font-bold"
          onClick={() => handleOAuthSignIn('google')}
          disabled={!!oauthLoading}
        >
          {oauthLoading === 'google' ? (
            <Loader2 className="mr-2 h-5 w-5 animate-spin" />
          ) : (
            <span className="mr-3 inline-flex h-5 w-5 items-center justify-center">
              <svg viewBox="0 0 24 24" aria-hidden="true" className="h-5 w-5">
                <path fill="hsl(4 83% 57%)" d="M12 10.2v3.6h5.09c-.22 1.17-.9 2.16-1.9 2.83l3.08 2.39c1.8-1.66 2.83-4.1 2.83-6.99 0-.67-.06-1.31-.18-1.94H12z"/>
                <path fill="hsl(137 56% 44%)" d="M6.53 14.32c-.31-.93-.49-1.93-.49-2.95s.18-2.02.49-2.95L3.36 5.98A9.996 9.996 0 0 0 2 11.37c0 1.62.39 3.15 1.08 4.49l3.45-1.54z"/>
                <path fill="hsl(45 95% 51%)" d="M12 22c2.7 0 4.96-.89 6.61-2.41l-3.08-2.39c-.86.57-1.97.91-3.53.91-2.71 0-5.01-1.83-5.83-4.29l-3.45 1.54C4.27 19.49 7.83 22 12 22z"/>
                <path fill="hsl(217 89% 60%)" d="M22 12.04c0-.66-.06-1.3-.18-1.93H12v3.64h5.09c-.23 1.16-.9 2.15-1.9 2.82v.02l3.08 2.39C20.83 17.89 22 15.21 22 12.04z"/>
              </svg>
            </span>
          )}
          {t('connexion.google')}
        </Button>
        <Button
          type="button"
          variant="outline"
          className="w-full h-12 rounded-xl border-border/60 hover:bg-muted/50 transition-all font-bold"
          onClick={() => handleOAuthSignIn('facebook')}
          disabled={!!oauthLoading}
        >
          {oauthLoading === 'facebook' ? (
            <Loader2 className="mr-2 h-5 w-5 animate-spin" />
          ) : (
            <span className="mr-3 inline-flex h-5 w-5 items-center justify-center">
              <svg viewBox="0 0 24 24" aria-hidden="true" className="h-5 w-5">
                <path fill="hsl(214 90% 52%)" d="M13 3h4a1 1 0 0 1 1 1v3h-3c-.55 0-1 .45-1 1v3h4l-1 4h-3v6h-4v-6H7v-4h3V8a5 5 0 0 1 5-5Z"/>
              </svg>
            </span>
          )}
          {t('connexion.facebook')}
        </Button>
      </div>
    </div>
  );
};

export default LoginForm;
