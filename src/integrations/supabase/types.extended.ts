/**
 * Manual type extensions for Supabase tables that are not (yet) in the auto-generated types.
 * These tables exist in the database but were created after the last `supabase gen types` run.
 * 
 * Once you regenerate types with `supabase gen types typescript --project-id <id>`,
 * you can remove these extensions and the `as any` casts throughout the codebase.
 */

export interface UserPresenceRow {
  user_id: string;
  last_seen_at: string;
  is_online: boolean;
  created_at: string;
  updated_at: string;
}

export interface UserPresenceInsert {
  user_id: string;
  is_online?: boolean;
  last_seen_at?: string;
  created_at?: string;
  updated_at?: string;
}

export interface UserPresenceUpdate {
  user_id?: string;
  is_online?: boolean;
  last_seen_at?: string;
  created_at?: string;
  updated_at?: string;
}

export interface NotificationRow {
  id: string;
  user_id: string;
  title: string;
  message: string | null;
  type: string;
  read: boolean;
  created_at: string;
}

export interface NotificationInsert {
  id?: string;
  user_id: string;
  title: string;
  message?: string | null;
  type?: string;
  read?: boolean;
  created_at?: string;
}

export interface NotificationUpdate {
  id?: string;
  user_id?: string;
  title?: string;
  message?: string | null;
  type?: string;
  read?: boolean;
  created_at?: string;
}

// ─── Additional type helpers to reduce `as any` casts ────────────────────

/** Shape of the JSON stored in site_settings.setting_value */
export interface SettingValue {
  enabled?: boolean;
  [key: string]: unknown;
}

/** Profile fields that may come from a join but aren't in the generated Row type */
export interface ProfileJoinFields {
  full_name?: string | null;
  avatar_url?: string | null;
  user_id?: string;
  first_name?: string;
  last_name?: string;
}

/** Shop JSON columns that are stored as `Json` in DB but have known shapes */
export interface ShopSocialMedia {
  facebook?: string;
  instagram?: string;
  twitter?: string;
  website?: string;
  [key: string]: string | undefined;
}

export interface ShopOpeningHours {
  [day: string]: { open: string; close: string } | string;
}

/** Dynamic announcement attributes (JSON column) */
export type AnnouncementAttributes = Record<string, string | number | boolean | string[] | null | undefined>;

/** Supabase realtime payload.new shape for the notifications table */
export interface RealtimeNotificationPayload {
  id: string;
  user_id: string;
  title: string;
  message: string | null;
  type: string;
  read: boolean;
  created_at: string;
}

/** RPC result shape for get_global_listing_total */
export interface RpcScalarResult<T = number> {
  data: T | null;
  error: { message: string; code: string } | null;
}

/** Generic row shape for aggregated category count queries */
export interface CategoryCountRow {
  category_slug: string;
  count?: number;
  count_id?: number;
  countId?: number;
}

/** Metier/Reparateur announcement dynamic attributes */
export interface MetierAttributes {
  is_graduate?: boolean;
  diplome?: boolean;
  home_service?: boolean;
  deplacement?: boolean;
  years_experience?: number;
  experience_level?: string;
  [key: string]: unknown;
}

/** Vehicle search result item with optional date variants */
export interface SearchResultItem {
  id: string;
  created_at?: string;
  createdAt?: string;
  date?: string;
  [key: string]: unknown;
}
