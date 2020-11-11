/* 10 - Crie um usuário chamado empresa_admim_local para o banco de dados EmpresaDB. Este usuário deve ter todos os privilégios mas sem acesso remoto.*/

CREATE USER 'empresa_admim_local'@localhost' IDENTIFIED BY '13579';
GRANT ALL PRIVILEGES ON 'EmpresaDB'.* TO 'empresa_admim_local'@'localhost';
FLUSH PRIVILEGES;