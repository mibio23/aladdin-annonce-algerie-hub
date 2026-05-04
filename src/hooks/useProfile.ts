
import { useState, useEffect, useCallback } from 'react';
import { useAuth } from '@/contexts/useAuth';
import { logger } from '@/utils/silentLogger';
import { toast } from '@/hooks/use-toast';
import { Profile } from '@/types/profile';
import { profileService } from '@/services/profileService';
import { createDefaultProfile, normalizeProfile } from '@/utils/profileUtils';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nHooks';

export const useProfile = () => {
  const [profile, setProfile] = useState<Profile | null>(null);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const { user } = useAuth();
  const { t } = useSafeI18nWithRouter();

  const fetchProfile = useCallback(async () => {
    if (!user) {
      setLoading(false);
      return;
    }

    try {
      setLoading(true);
      let data = await profileService.fetchProfile(user.id);

      if (data) {
        setProfile(normalizeProfile(data));
      } else {
        setProfile(createDefaultProfile(user));
        for (let i = 0; i < 3 && !data; i++) {
          await new Promise((r) => setTimeout(r, 400));
          data = await profileService.fetchProfile(user.id);
        }
        if (data) {
          setProfile(normalizeProfile(data));
        } else {
          try {
            const created = await profileService.createProfile(user.id, {
              email: user.email,
              full_name: user.user_metadata?.full_name || user.email,
              first_name: user.user_metadata?.first_name || null,
              last_name: user.user_metadata?.last_name || null,
              phone: user.user_metadata?.phone || null,
              gender: user.user_metadata?.gender || null,
              display_name: user.user_metadata?.full_name || null,
            });
            if (created) {
              setProfile(normalizeProfile(created));
            }
          } catch (e) {
            logger.error('Error creating profile after signup:', e);
            const retry = await profileService.fetchProfile(user.id);
            if (retry) {
              setProfile(normalizeProfile(retry));
            }
          }
        }
      }
    } catch (error) {
      logger.error('Error fetching profile:', error);
      setProfile(createDefaultProfile(user));

      const message = (error as { message?: string } | null)?.message || '';
      const lower = message.toLowerCase();
      if (message.includes('Failed to fetch') || lower.includes('network') || lower.includes('fetch')) {
        toast({
          title: t('common.error'),
          description: t('profile.loadError'),
          variant: "destructive",
        });
      }
    } finally {
      setLoading(false);
    }
  }, [user, t]);

  const updateProfile = async (updatedProfile: Partial<Profile>) => {
    if (!user || !profile) return false;

    try {
      setSaving(true);
      const data = await profileService.updateProfile(user.id, updatedProfile as Record<string, unknown>);
      
      setProfile(prev => prev ? { ...prev, ...normalizeProfile(data) } : normalizeProfile(data));
      toast({
        title: t('common.success'),
        description: t('profile.updateSuccess'),
      });
      return true;
    } catch (error) {
      logger.error('Error updating profile:', error);
      let message = (error as { message?: string } | null)?.message || '';
      
      // Personnalisation du message d'erreur spécifique pour les champs protégés
      if (message.includes("Modification des champs d'identité interdite") || message.includes("identity fields")) {
        message = t('profile.identityFieldsBlocked');
      }

      const isUnauthorized = message.includes(t('profile.identityFieldsBlocked').substring(0, 20));
      toast({
        title: isUnauthorized ? t('profile.unauthorized') : t('common.error'),
        description: message ? message : t('profile.updateError'),
        variant: isUnauthorized ? "default" : "destructive",
      });
      return false;
    } finally {
      setSaving(false);
    }
  };

  const updateAvatar = async (avatarUrl: string) => {
    if (!user) return false;

    try {
      await profileService.updateAvatar(user.id, avatarUrl);
      setProfile(prev => prev ? { ...prev, avatar_url: avatarUrl } : null);
      toast({
        title: t('common.success'),
        description: t('profile.avatarUpdateSuccess'),
      });
      return true;
    } catch (error) {
      logger.error('Error updating avatar:', error);
      toast({
        title: t('common.error'),
        description: t('profile.avatarUpdateError'),
        variant: "destructive",
      });
      return false;
    }
  };

  useEffect(() => {
    fetchProfile();
  }, [user, fetchProfile]);

  return {
    profile,
    loading,
    saving,
    updateProfile,
    updateAvatar,
    refetch: fetchProfile,
  };
};
