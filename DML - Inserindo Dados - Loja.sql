-- DML (Data Manipulation Languagem)
-- Linguagem de Manipulação de Dados
-- Escrito em SQL (Structred Query Language)
-- Linguagem de Consulta Estruturada



-----------------------------------------
-- Inserindo Dados na tabela "Produto"
-----------------------------------------

INSERT INTO produto (descricao, preco, estoque) VALUES ('Código limpo: Habilidades práticas do Agile Software', 70.99, 10);
INSERT INTO produto (descricao, preco, estoque) VALUES ('Introdução à Programação com Python: Algoritmos e Lógica de Programação Para Iniciantes', 49.68, 20);
INSERT INTO produto (descricao, preco, estoque) VALUES ('Algoritmos - Teoria e Prática', 335.99, 7);
INSERT INTO produto (descricao, preco, estoque) VALUES ('Java para Iniciantes: Crie, Compile e Execute Programas Java Rapidamente', 107.99, 3);

-----------------------------------------
-- Inserindo Dados na tabela "Venda"
-----------------------------------------

INSERT INTO venda (cliente, data_venda) VALUES ('Johnny Lawrence', '2018-08-20');
INSERT INTO venda (cliente, data_venda) VALUES ('John Kreese', '2021-03-14');
INSERT INTO venda (cliente, data_venda) VALUES ('Terry Silver', '2009-12-01');
INSERT INTO venda (cliente, data_venda) VALUES ('Robby Keene', '2022-04-22');

-----------------------------------------
-- Inserindo Dados na tabela "Venda_item"
-----------------------------------------

INSERT INTO venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) VALUES (1, 3, 335.99, 2, 671.98);
INSERT INTO venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) VALUES (2, 1, 70.99, 1, 70.99);
INSERT INTO venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) VALUES (3, 2, 49.68, 3, 149.04);
INSERT INTO venda_item (id_venda, id_produto, preco_unitario, quantidade, total_item) VALUES (1, 2, 49.68, 1, 49.68);
