INSERT INTO public.site_settings (setting_key, setting_value, is_active)
VALUES (
  'premium_settings',
  '{"premium_duration_days":30}'::jsonb,
  true
)
ON CONFLICT (setting_key)
DO UPDATE SET
  setting_value = jsonb_set(COALESCE(public.site_settings.setting_value, '{}'::jsonb), '{premium_duration_days}', '30'::jsonb, true),
  is_active = true;

