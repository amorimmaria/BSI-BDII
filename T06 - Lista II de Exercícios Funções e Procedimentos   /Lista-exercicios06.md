## Lista de Exercícios II - Funções e Procedimentos

Considere o banco de dados MilhagensBD abaixo para responder às questões:

**obs: primary key, foreign key.**

>cliente (codigo, nome, endereco)
piloto (codigo, nome, num_voos)
voo (codigo, tipo, piloto, num_passageiros, distancia)
milhas (cliente, quantidade)
cliente_voo (cliente, voo, classe)

1 - Crie uma função que recebe o código de um voo e retorna o número de passageiros desse voo.

2 - Crie uma função que recebe o código de um cliente e o código de um voo e retorna a classe que o cliente está viajando.

3 - Crie uma função que  retorna o número de voos que certo cliente já realizou.

4 - Crie uma função que retorna a soma das milhas de todos os clientes.

5 - Crie uma função que retorne o número de clientes com mais de 500 milhas.

6 - Crie uma procedure que recebe um valor qualquer e retorna esse valor ao quadrado.

7 - Crie uma procedure que recebe um código de piloto, então soma mais um voo a esse piloto e por fim exibe o número total de voos desse piloto.

8 - Crie uma procedure que recebe o código de um cliente e retorna o nome e a quantidade de milhas desse cliente.

9 - Crie uma procedure que recebe o código de um piloto e retorna o nome desse piloto e sua quantidade de voos.

10 - Crie um procedure que recebe o código de um cliente e exibe sua milhagem, depois zera ela e exibe o nome do cliente e a milhagem novamente.

