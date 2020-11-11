/* 13 - Crie um índice para o atributo sigla da tabela departamento e um índice para o atributo situação da tabela atividade.*/
CREATE INDEX Ind_sigla ON Departamento(sigla);
CREATE INDEX Ind_situacao ON Atividade(situacao);