
import React, { useState, useEffect } from 'react';
import { User, Session } from '@supabase/supabase-js';
import { isSupabaseConfigured, supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';
import { AuthContext, AuthContextType } from './useAuth';

// types & hook moved to './useAuth' to satisfy react-refresh rule

const cleanupAuthState = () => {
  try {
    Object.keys(localStorage).forEach((key) => {
      if (key.startsWith('supabase.auth.') || key.includes('sb-')) {
        localStorage.removeItem(key);
      }
    });
    
    Object.keys(sessionStorage || {}).forEach((key) => {
      if (key.startsWith('supabase.auth.') || key.includes('sb-')) {
        sessionStorage.removeItem(key);
      }
    });
  } catch (error) {
    logger.error('Error cleaning auth state', error);
  }
};

interface AuthProviderProps {
  children: React.ReactNode;
}

export const AuthProvider = ({ children }: AuthProviderProps) => {
  const [user, setUser] = useState<User | null>(null);
  const [session, setSession] = useState<Session | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let mounted = true;

    // Set up auth state listener FIRST
    const { data: { subscription } } = supabase.auth.onAuthStateChange(
      (event, currentSession) => {
        if (!mounted) return;

        logger.info(`[AUTH] Auth state changed: ${event}`, currentSession?.user?.email);
        
        setSession(currentSession);
        setUser(currentSession?.user ?? null);
        
        if (event === 'SIGNED_IN' && currentSession?.user) {
          // Defer additional operations to prevent deadlocks
          setTimeout(async () => {
            if (!mounted) return;
            
            try {
              const { error } = await supabase
                .from('profiles')
                .select('*')
                .eq('user_id', currentSession.user.id)
                .single();

              if (error && error.code === 'PGRST116') {
                await supabase
                  .from('profiles')
                  .upsert(
                    {
                      user_id: currentSession.user.id,
                      email: currentSession.user.email,
                      full_name: currentSession.user.user_metadata?.full_name || currentSession.user.email,
                      first_name: currentSession.user.user_metadata?.first_name || null,
                      last_name: currentSession.user.user_metadata?.last_name || null,
                      phone: currentSession.user.user_metadata?.phone || null,
                      gender: currentSession.user.user_metadata?.gender || null,
                      display_name: currentSession.user.user_metadata?.full_name || null,
                    },
                    { onConflict: 'user_id' }
                  );
              }
            } catch (error) {
              logger.error('[AUTH] Profile creation error', error);
            }
          }, 100);
        }
        
        if (event === 'SIGNED_OUT') {
          cleanupAuthState();
        }
        
        setLoading(false);
      }
    );

    // THEN check for existing session
    supabase.auth.getSession().then(({ data: { session: initialSession } }) => {
      if (mounted) {
        setSession(initialSession);
        setUser(initialSession?.user ?? null);
        setLoading(false);
      }
    });

    return () => {
      mounted = false;
      subscription.unsubscribe();
    };
  }, []);

  const signIn = async (email: string, password: string): Promise<{ error: Error | null }> => {
    try {
      setLoading(true);
      cleanupAuthState();
      
      try {
        await supabase.auth.signOut({ scope: 'global' });
      } catch (err) {
        logger.debug('[AUTH] Global signout failed (expected)', err);
      }

      const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
      });

      if (error) {
        return { error };
      }

      if (data.user) {
        setTimeout(() => {
          // Vérifier s'il y a une URL de redirection stockée
          const redirectUrl = sessionStorage.getItem('authRedirectUrl') || '/';
          sessionStorage.removeItem('authRedirectUrl'); // Nettoyer après utilisation
          window.location.href = redirectUrl;
        }, 500);
      }

      return { error: null };
    } catch (error) {
      return { error: error as Error };
    } finally {
      setLoading(false);
    }
  };

  const signUp = async (email: string, password: string, metadata?: Record<string, unknown>): Promise<{ error: Error | null }> => {
    try {
      setLoading(true);

      if (!isSupabaseConfigured) {
        return { error: new Error('Configuration Supabase manquante') };
      }

      const rawEnv = import.meta.env as unknown as Record<string, string | undefined>;
      const emailRedirectTo =
        rawEnv.VITE_AUTH_REDIRECT_URL || rawEnv.VITE_PUBLIC_SITE_URL || rawEnv.VITE_SITE_URL || undefined;

      const { error } = await supabase.auth.signUp({
        email: email.trim().toLowerCase(),
        password,
        options: {
          data: metadata,
          ...(emailRedirectTo ? { emailRedirectTo } : {}),
        },
      });

      if (error) {
        return { error };
      }

      return { error: null };
    } catch (error) {
      return { error: error as Error };
    } finally {
      setLoading(false);
    }
  };

  const signOut = async (): Promise<void> => {
    try {
      setLoading(true);
      cleanupAuthState();
      
      try {
        await supabase.auth.signOut({ scope: 'global' });
      } catch (err) {
        logger.debug('[AUTH] Sign out error (continuing anyway)', err);
      }

      window.location.href = '/?auth=login';
    } catch (error) {
      logger.error('[AUTH] Sign out error', error);
      window.location.href = '/?auth=login';
    } finally {
      setLoading(false);
    }
  };

  const resetPassword = async (email: string): Promise<{ error: Error | null }> => {
    try {
      const { error } = await supabase.auth.resetPasswordForEmail(email, {
        redirectTo: `${window.location.origin}/reset-password`,
      });

      if (error) {
        return { error };
      }

      return { error: null };
    } catch (error) {
      return { error: error as Error };
    }
  };

  const value: AuthContextType = {
    user,
    session,
    loading,
    signIn,
    signUp,
    signOut,
    resetPassword,
  };

  return (
    <AuthContext.Provider value={value}>
      {children}
    </AuthContext.Provider>
  );
};
