/* 1 - Faça um função para calcular a idade do funcionário.*/

CREATE OR REPLACE FUNCTION calcIdadeFunc(INTEGER)
	RETURNS INTERVAL
	AS $$
BEGIN
	RETURN (
		SELECT AGE(f.datanasc)
		FROM funcionario f
		WHERE f.codigo = $1
	);
END;
$$ LANGUAGE plpgsql;

SELECT calcIdadeFunc(1);
