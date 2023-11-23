CREATE OR REPLACE FUNCTION get_data_secure(model_name varchar)
RETURNS TABLE
(a_id integer, model varchar, year integer)
AS $$
declare
	str varchar;
begin
	str := 'select * from airplane where model = $1';
	raise notice 'Query=%', str;
    return query execute str using model_name;
end;
$$ LANGUAGE plpgsql;