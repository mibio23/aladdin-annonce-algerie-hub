
import { isSupabaseConfigured, supabase } from '@/integrations/supabase/client';
import { cleanupAuthState, validatePasswordClient } from '@/utils/authUtils';
import { logger } from '@/utils/silentLogger';

export const authService = {
  async signInWithPassword(email: string, password: string) {
    try {
      // Client-side password validation
      const passwordValidation = validatePasswordClient(password);
      if (!passwordValidation.isValid) {
        return {
          data: null,
          error: { message: 'Mot de passe invalide: ' + passwordValidation.errors.join(', ') }
        };
      }

      // Clean up any existing auth state first
      cleanupAuthState();

      // Attempt global sign out to ensure clean state
      try {
        await supabase.auth.signOut({ scope: 'global' });
      } catch (signOutError) {
        logger.warn('Global sign out warning:', signOutError);
      }

      const { data, error } = await supabase.auth.signInWithPassword({
        email: email.trim().toLowerCase(),
        password
      });

      return { data, error };
    } catch (error) {
      logger.error('Sign in error:', error);
      return { data: null, error };
    }
  },

  async signUp(email: string, password: string, additionalData?: Record<string, unknown>) {
    try {
      if (!isSupabaseConfigured) {
        return { data: null, error: { message: 'Configuration Supabase manquante' } };
      }

      // Enhanced client-side password validation
      const passwordValidation = validatePasswordClient(password);
      if (!passwordValidation.isValid) {
        return {
          data: null,
          error: { message: 'Mot de passe trop faible: ' + passwordValidation.errors.join(', ') }
        };
      }

      // Clean up any existing auth state
      cleanupAuthState();

      const rawEnv = import.meta.env as unknown as Record<string, string | undefined>;
      const emailRedirectTo =
        rawEnv.VITE_AUTH_REDIRECT_URL || rawEnv.VITE_PUBLIC_SITE_URL || rawEnv.VITE_SITE_URL || undefined;

      const { data, error } = await supabase.auth.signUp({
        email: email.trim().toLowerCase(),
        password,
        options: {
          data: additionalData,
          ...(emailRedirectTo ? { emailRedirectTo } : {}),
        }
      });

      return { data, error };
    } catch (error) {
      logger.error('Sign up error:', error);
      const message = (error as { message?: string } | null)?.message;
      return { data: null, error: { message: message || 'Erreur inattendue lors de l’inscription' } };
    }
  },

  async signOut() {
    try {
      // Obtenir l'utilisateur actuel avant la déconnexion
      const { data: { user } } = await supabase.auth.getUser();
      if (user) {
        // Mettre à jour le statut de présence à hors ligne
        await supabase
          .from('user_presence' as any)
          .update({ is_online: false, last_seen_at: new Date().toISOString() })
          .eq('user_id', user.id);
      }

      cleanupAuthState();
      
      // Attempt global sign out
      const { error } = await supabase.auth.signOut({ scope: 'global' });
      
      if (error) {
        logger.warn('Sign out warning:', error);
      }
      
      // Force page refresh for clean state
      setTimeout(() => {
        window.location.href = '/?auth=login';
      }, 100);
      
    } catch (error) {
      logger.error('Sign out error:', error);
      // Force redirect even on error
      window.location.href = '/?auth=login';
    }
  },

  async getSession() {
    try {
      return await supabase.auth.getSession();
    } catch (error) {
      logger.error('Get session error:', error);
      return { data: { session: null }, error };
    }
  },

  async resetPassword(email: string) {
    try {
      const { error } = await supabase.auth.resetPasswordForEmail(
        email.trim().toLowerCase(),
        {
          redirectTo: `${window.location.origin}/reset-password`,
        }
      );

      return { error };
    } catch (error) {
      logger.error('Reset password error:', error);
      return { error };
    }
  }
};
