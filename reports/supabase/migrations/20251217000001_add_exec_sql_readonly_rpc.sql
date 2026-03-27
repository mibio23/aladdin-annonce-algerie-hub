CREATE OR REPLACE FUNCTION public.exec_sql_readonly(sql_query text)
RETURNS jsonb
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = pg_catalog, public
AS $$
DECLARE
  cleaned text;
  result jsonb;
BEGIN
  IF sql_query IS NULL OR btrim(sql_query) = '' THEN
    RAISE EXCEPTION 'sql_query is required';
  END IF;

  cleaned := regexp_replace(sql_query, ';[[:space:]]*$', '');

  IF cleaned ~ ';' THEN
    RAISE EXCEPTION 'Multiple statements are not allowed';
  END IF;

  IF cleaned !~* '^[[:space:]]*(with|select)([[:space:]]|\\()' THEN
    RAISE EXCEPTION 'Only SELECT queries are allowed';
  END IF;

  EXECUTE format(
    'SELECT COALESCE(jsonb_agg(to_jsonb(t)), ''[]''::jsonb) FROM (%s) t',
    cleaned
  )
  INTO result;

  RETURN result;
END;
$$;

REVOKE ALL ON FUNCTION public.exec_sql_readonly(text) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.exec_sql_readonly(text) TO service_role;

NOTIFY pgrst, 'reload schema';

