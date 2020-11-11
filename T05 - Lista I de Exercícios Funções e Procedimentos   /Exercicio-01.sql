CREATE FUNCTION calcIdadeFunc(INTEGER) 
RETURNS INTEGER AS $$
DECLARE idade INTEGER;
BEGIN
	SELECT INTO idade EXTRACT(years FROM AGE(f.datanasc)) 
	FROM funcionario f 
	WHERE f.codigo = $1;
	RETURN idade;
END;
$$ LANGUAGE plpgsql;

SELECT calcIdadeFunc(1);