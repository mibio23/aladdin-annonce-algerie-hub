
import { useState, useCallback } from 'react';
import { validateUserInput } from '@/utils/securityValidators';
import { useToast } from '@/components/ui/use-toast';
import { authService } from '@/services/authService';
import { cleanupAuthState, getSecureErrorMessage, validatePasswordClient } from '@/utils/authUtils';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nHooks';

export const useSecureAuth = () => {
  const [isLoading, setIsLoading] = useState(false);
  const { toast } = useToast();
  const { t } = useSafeI18nWithRouter();

  const secureSignIn = useCallback(async (email: string, password: string) => {
    setIsLoading(true);
    
    try {
      // Enhanced client-side validation
      const passwordValidation = validatePasswordClient(password);
      if (!passwordValidation.isValid) {
        toast({
          title: t('auth.secure.validationError'),
          description: passwordValidation.errors.join(', '),
          variant: "destructive",
        });
        return { data: null, error: { message: t('auth.secure.validationFailed') } };
      }

      // Additional security validation
      const validation = validateUserInput({ password });
      if (!validation.isValid) {
        toast({
          title: t('auth.secure.validationError'),
          description: validation.errors.join(', '),
          variant: "destructive",
        });
        return { data: null, error: { message: t('auth.secure.validationFailed') } };
      }

      const { data, error } = await authService.signInWithPassword(email, password);

      if (error) {
        const errMsg = (error as { message?: string })?.message;
        const userMessage = getSecureErrorMessage(errMsg || t('auth.secure.connectionError'));
        
        toast({
          title: t('auth.secure.connectionError'),
          description: userMessage,
          variant: "destructive",
        });
        
        return { data: null, error };
      }

      if (data?.user) {
        toast({
          title: t('auth.secure.connectionSuccess'),
          description: t('auth.secure.connectedMessage'),
        });
        // Redirection is handled by AuthContext.signIn (supports authRedirectUrl from sessionStorage)
      }

      return { data, error: null };

    } catch (error) {
      logger.error('Erreur lors de la connexion sécurisée:', error);
      toast({
        title: t('auth.secure.systemError'),
        description: t('auth.secure.unexpectedError'),
        variant: "destructive",
      });
      return { data: null, error };
    } finally {
      setIsLoading(false);
    }
  }, [toast, t]);

  const secureSignUp = useCallback(async (email: string, password: string, additionalData?: Record<string, unknown>) => {
    setIsLoading(true);
    
    try {
      // Enhanced password validation
      const passwordValidation = validatePasswordClient(password);
      if (!passwordValidation.isValid) {
        toast({
          title: t('auth.secure.weakPassword'),
          description: passwordValidation.errors.join(', '),
          variant: "destructive",
        });
        return { data: null, error: { message: t('auth.secure.invalidPassword') } };
      }

      const { data, error } = await authService.signUp(email, password, additionalData);

      if (error) {
        const errMsg = (error as { message?: string })?.message;
        const userMessage = getSecureErrorMessage(errMsg || t('auth.secure.signupError'));
        
        toast({
          title: t('auth.secure.signupError'),
          description: userMessage,
          variant: "destructive",
        });
        
        return { data: null, error };
      }

      if (data?.user) {
        toast({
          title: t('auth.secure.signupSuccess'),
          description: t('auth.secure.verifyEmail'),
        });
      }

      return { data, error: null };

    } catch (error) {
      logger.error('Erreur lors de l\'inscription sécurisée:', error);
      toast({
        title: t('auth.secure.systemError'),
        description: t('auth.secure.unexpectedError'),
        variant: "destructive",
      });
      return { data: null, error };
    } finally {
      setIsLoading(false);
    }
  }, [toast, t]);

  const secureSignOut = useCallback(async () => {
    setIsLoading(true);
    
    try {
      await authService.signOut();
      
      toast({
        title: t('auth.secure.logoutSuccess'),
        description: t('auth.secure.logoutMessage'),
      });
      
    } catch (error) {
      logger.error('Erreur lors de la déconnexion:', error);
      // Force redirect even on error
      window.location.href = '/?auth=login';
    } finally {
      setIsLoading(false);
    }
  }, [toast, t]);

  const verifySession = useCallback(async () => {
    try {
      const { data: { session }, error } = await authService.getSession();
      
      if (error) {
        logger.error('Erreur de vérification de session:', error);
        cleanupAuthState();
        return null;
      }
      
      return session;
    } catch (error) {
      logger.error('Erreur lors de la vérification de session:', error);
      cleanupAuthState();
      return null;
    }
  }, []);

  return {
    secureSignIn,
    secureSignUp,
    secureSignOut,
    verifySession,
    cleanupAuthState,
    isLoading,
  };
};
