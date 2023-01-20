CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    carne VARCHAR(255),
    frango VARCHAR (255),
    
    PRIMARY KEY (id)

);
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    cortes VARCHAR (255),
    peso INT,
    preco DECIMAL(5.2),
    validade DATE,
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(carne,frango)
VALUES ("Boi","Galo");
INSERT INTO tb_produtos(cortes,peso,preco,validade)
VALUES("Asa",1000,9.99,"25-05-2023");
INSERT INTO tb_produtos(cortes,peso,preco,validade)
VALUES("Coxa",1000,12.99,"30-06-2023");
INSERT INTO tb_produtos(cortes,peso,preco,validade)
VALUES("Sassami",500,17.99,"02-08-2024");
INSERT INTO tb_produtos(cortes,peso,preco,validade)
VALUES("Acem",1000,39.99,"02-01-2025");
INSERT INTO tb_produtos(cortes,peso,preco,validade)
VALUES("Alcatra",1000,49.99,"04-03-2025");
INSERT INTO tb_produtos(cortes,peso,preco,validade)
VALUES("Picanha",1000,69.99,"10-08-2025");
INSERT INTO tb_produtos(cortes,peso,preco,validade)
VALUES("Costela",400,22.99,"05-05-2025");

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco >50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';


 SELECT * FROM tb_categoria INNER JOIN tb_produtos
    ON tb_categoria.id = tb_produtos.categoria_id;
    
SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id WHERE setor LIKE '%Boi%';