/* 5 - Crie um usuário chamado empresa_gerente para o banco de dados EmpresaDB. Este usuário deve ter privilégios apenas de fazer consultas em todas as tabelas.*/

CREATE USER 'empresa_gerente'@'localhost' IDENTIFIED BY 'bsibd123';
GRANT SELECT ON ALL TABLES IN SCHEMA public TO empresa_gerente'@'localhost' IDENTIFIED BY 'bsibd123';
GRANT INSERT, UPDATE ON (Equipe,Membro,Atividade,AtividadeProjeto) TO empresa_gerente'@'EmpresaDB' IDENTIFIED BY '54321';