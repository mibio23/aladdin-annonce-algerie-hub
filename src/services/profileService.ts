
import { supabase } from '@/integrations/supabase/client';
import { secureLog } from '@/utils/secureLogging';

export const profileService = {
  async fetchProfile(userId: string) {
    try {
      const { data, error } = await supabase
        .from('profiles')
        .select('*')
        .eq('user_id', userId)
        .single();

      if (error && error.code !== 'PGRST116') {
        throw error;
      }

      return data;
    } catch (error) {
      secureLog.error('Profile fetch error - User ID masked for privacy', error);
      throw error;
    }
  },

  async updateProfile(userId: string, updates: Record<string, unknown>) {
    try {
      // Validate input data before processing
      if (!userId || typeof updates !== 'object') {
        throw new Error('Invalid profile update parameters');
      }

      // Remove potentially sensitive and protected fields from updates
      const { _user_id, _id, _created_at, first_name: _first_name, last_name: _last_name, gender: _gender, phone: _phone, ...sanitizedUpdates } = updates as Record<string, unknown>;

      const { data, error } = await supabase
        .from('profiles')
        .update({
          ...sanitizedUpdates,
          updated_at: new Date().toISOString()
        })
        .eq('user_id', userId)
        .select()
        .single();

      if (error) {
        throw error;
      }

      return data;
    } catch (error) {
      secureLog.error('Profile update error - Details masked for privacy', error);
      throw error;
    }
  },

  async createProfile(userId: string, profileData: Record<string, unknown>) {
    try {
      if (!userId) {
        throw new Error('User ID is required for profile creation');
      }

      // Remove potentially dangerous fields
      const { id: _id, created_at: _created_at, _updated_at, user_id: _user_id, ...sanitizedData } = profileData as Record<string, unknown>;

      const { data, error } = await supabase
        .from('profiles')
        .insert({
          user_id: userId,
          ...sanitizedData
        })
        .select()
        .single();

      if (error) {
        throw error;
      }

      return data;
    } catch (error) {
      secureLog.error('Profile creation error - User data masked for privacy', error);
      throw error;
    }
  },

  async updateAvatar(userId: string, avatarUrl: string) {
    try {
      if (!userId) {
        throw new Error('User ID is required');
      }

      // Allow empty string to remove avatar
      // Validate URL format for non-empty, non-base64, non-JSON strings
      if (avatarUrl && !avatarUrl.startsWith('data:') && !avatarUrl.startsWith('{')) {
        try {
          new URL(avatarUrl);
        } catch {
          throw new Error('Invalid avatar URL format');
        }
      }

      const { data, error } = await supabase
        .from('profiles')
        .update({
          avatar_url: avatarUrl,
          updated_at: new Date().toISOString()
        })
        .eq('user_id', userId)
        .select()
        .single();

      if (error) {
        throw error;
      }

      return data;
    } catch (error) {
      secureLog.error('Avatar update error - User data masked for privacy', error);
      throw error;
    }
  },

  // New secure method to get masked profile data for public display
  async getPublicProfileData(userId: string) {
    try {
      const { data, error } = await supabase
        .rpc('get_public_profile_data', { profile_user_id: userId });

      if (error) {
        throw error;
      }

      return data;
    } catch (error) {
      secureLog.error('Public profile fetch error', error);
      throw error;
    }
  },

  // New method to get masked contact info
  async getMaskedContactInfo(userId: string) {
    try {
      const { data, error } = await supabase
        .rpc('get_masked_profile_contact', { profile_user_id: userId });

      if (error) {
        throw error;
      }

      return data;
    } catch (error) {
      secureLog.error('Masked contact info fetch error', error);
      throw error;
    }
  }
};
