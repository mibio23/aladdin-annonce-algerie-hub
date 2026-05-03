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
