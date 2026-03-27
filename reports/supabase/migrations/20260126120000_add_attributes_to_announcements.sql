-- Add attributes column to announcements table for dynamic filtering
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS attributes JSONB DEFAULT '{}'::jsonb;

-- Create GIN index for fast searching on attributes
CREATE INDEX IF NOT EXISTS idx_announcements_attributes ON announcements USING gin (attributes);

-- Update public view if it exists (usually Supabase updates views automatically if they select *, but good to be safe)
-- Note: announcements_public usually selects specific columns. If it's a view, we might need to recreate it.
-- For now, we assume direct access or * selection.
