CREATE OR REPLACE FUNCTION change_data_secure(attr1 varchar, attr2 varchar)
RETURNS varchar AS $$
declare
	str varchar;
begin
	str := 'update airplane set model = $2 where model = $1';
	raise notice 'Query=%', str;
	execute str using attr1, attr2; 
    return 'Model updated';
end;
$$ LANGUAGE plpgsql;