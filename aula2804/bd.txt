CREATE DATABASE etecmcm2;

USE etecmcm2;


CREATE TABLE produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    qtde INT,
    preco DECIMAL(10,2),
    marca VARCHAR(255),
    fk_categoria_id_categorias INT
);

CREATE TABLE categoria (
    id_categorias INT PRIMARY KEY AUTO_INCREMENT,
    nome_cat VARCHAR(255)
);
 
ALTER TABLE produto ADD CONSTRAINT FK_produto_2
    FOREIGN KEY (fk_categoria_id_categorias)
    REFERENCES categoria (id_categorias)
    ON DELETE RESTRICT;