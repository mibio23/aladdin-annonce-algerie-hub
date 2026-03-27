-- Initialize media_compression settings in site_settings table
INSERT INTO public.site_settings (setting_key, setting_value, is_active)
VALUES (
  'media_compression',
  '{"imageQuality": 0.8, "imageMaxWidth": 1200, "videoMaxSizeBytes": 15728640, "isVideoEnabled": true}'::jsonb,
  true
)
ON CONFLICT (setting_key)
DO UPDATE SET
  setting_value = jsonb_set(
    jsonb_set(
      jsonb_set(
        COALESCE(public.site_settings.setting_value, '{}'::jsonb),
        '{imageQuality}', '0.8'::jsonb, true
      ),
      '{imageMaxWidth}', '1200'::jsonb, true
    ),
    '{isVideoEnabled}', 'true'::jsonb, true
  ),
  is_active = true;
