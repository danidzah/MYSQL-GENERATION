CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;


CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR (255),
    quantidade INT,
    
    PRIMARY KEY (id)
    
);
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    item VARCHAR (255),
    marca VARCHAR (255),
    preco DECIMAL (8.2),
    validade DATE,
    categorias_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias(nome_categoria,quantidade)
VALUES ("Alimentício",500);

INSERT INTO tb_categorias(nome_categoria,quantidade)
VALUES ("Pós Treino",100);

INSERT INTO tb_categorias(nome_categoria,quantidade)
VALUES ("Pré Treino",50);

INSERT INTO tb_categorias(nome_categoria,quantidade)
VALUES ("Cereais",75);

INSERT INTO tb_produtos(item,marca,preco,validade)
VALUES ("Arroz Vegano", "Floresta",15.99,"2023-07-03");

INSERT INTO tb_produtos(item,marca,preco,validade)
VALUES ("Creatina", "Whey",2.99,"2023-09-03");	

INSERT INTO tb_produtos(item,marca,preco,validade)
VALUES ("BCAA", "WHEY",14.99,"2025-12-14");

INSERT INTO tb_produtos(item,marca,preco,validade)
VALUES ("Barra Chocolate", "WHEY",5.99,"2025-03-04");

INSERT INTO tb_produtos(item,marca,preco,validade)
VALUES ("HIPER MASS", "AGE",150.99,"2029-12-13");

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco >100;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;
SELECT * FROM tb_produtos WHERE nome_categoria LIKE '%C%';

 SELECT * FROM tb_categorias INNER JOIN tb_produtos
    ON tb_categorias.id = tb_produtos.categoria_id;
    
    SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id WHERE nome_categoria LIKE '%Alimentício%';
