CREATE OR REPLACE FUNCTION change_data(attr1 varchar, attr2 varchar)
RETURNS varchar AS $$
declare
	str varchar;
begin
	str := 'update airplane set model = ''' || attr2 || ''' where model = ''' || attr1 || '''';
	raise notice 'Query=%', str;
	execute str; 
    return 'Model updated';
end;
$$ LANGUAGE plpgsql;