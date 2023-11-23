CREATE OR REPLACE FUNCTION get_data(model_name varchar)
RETURNS TABLE
(a_id integer, model varchar, year integer)
AS $$
declare
	str varchar;
begin
	str := 'select * from airplane where model = ''' || model_name || '''';
	raise notice 'Query=%', str;
	return query execute str;
end;
$$ LANGUAGE plpgsql;