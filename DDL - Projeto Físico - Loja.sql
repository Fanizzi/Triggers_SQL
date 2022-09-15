CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE produto(  
	id int auto_increment,     
    descricao VARCHAR(100) NOT NULL,
    preco DOUBLE NOT NULL,
    estoque INT NOT NULL,
    PRIMARY KEY(id)
);
    
CREATE TABLE venda(  
	id INT auto_increment,
    cliente VARCHAR(50) NOT NULL,
    data_venda TIMESTAMP NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE venda_item(
	id_venda int NOT NULL,
    id_produto int NOT NULL,
    preco_unitario double NOT NULL,
    quantidade double NOT NULL,
    total_item double NOT NULL,
    PRIMARY KEY (id_venda, id_produto),
    FOREIGN KEY (id_venda) REFERENCES venda(id),
    FOREIGN KEY (id_produto) references produto(id) 
);
