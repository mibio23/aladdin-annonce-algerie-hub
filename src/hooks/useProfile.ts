
import { useState, useEffect, useCallback } from 'react';
import { useAuth } from '@/contexts/useAuth';
import { logger } from '@/utils/silentLogger';
import { toast } from '@/hooks/use-toast';
import { Profile } from '@/types/profile';
import { profileService } from '@/services/profileService';
import { createDefaultProfile, normalizeProfile } from '@/utils/profileUtils';

export const useProfile = () => {
  const [profile, setProfile] = useState<Profile | null>(null);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const { user } = useAuth();

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
      toast({
        title: "Erreur",
        description: "Erreur lors du chargement du profil",
        variant: "destructive",
      });
    } finally {
      setLoading(false);
    }
  }, [user]);

  const updateProfile = async (updatedProfile: Partial<Profile>) => {
    if (!user || !profile) return false;

    try {
      setSaving(true);
      const { first_name: _first_name, last_name: _last_name, gender: _gender, phone: _phone, ...allowedUpdates } = updatedProfile as Record<string, unknown>;
      const data = await profileService.updateProfile(user.id, allowedUpdates);
      
      setProfile(prev => prev ? { ...prev, ...normalizeProfile(data) } : normalizeProfile(data));
      toast({
        title: "Succès",
        description: "Profil mis à jour avec succès",
      });
      return true;
    } catch (error) {
      logger.error('Error updating profile:', error);
      toast({
        title: "Erreur",
        description: "Erreur lors de la mise à jour du profil",
        variant: "destructive",
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
        title: "Succès",
        description: "Photo de profil mise à jour",
      });
      return true;
    } catch (error) {
      logger.error('Error updating avatar:', error);
      toast({
        title: "Erreur",
        description: "Erreur lors de la mise à jour de la photo",
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
