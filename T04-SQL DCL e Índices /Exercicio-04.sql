/* 4 - Crie um usuário chamado empresa_admim para o banco de dados EmpresaDB. Este usuário deve ter todos os privilégios mas com acesso remoto.*/

CREATE USER 'empresa_admim_local'@'%' IDENTIFIED BY'54321';
GRANT ALL PRIVILEGES ON 'EmpresaDB'.* TO 'empresa_admim_local'@'%;
FLUSH PRIVILEGES;