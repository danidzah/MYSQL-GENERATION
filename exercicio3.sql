CREATE DATABASE db_farmacia_bem_estar;


CREATE TABLE tb_categoria (
 id BIGINT AUTO_INCREMENT, 
 nome_categoria VARCHAR (255),
 quantidade INT,
 
PRIMARY KEY (id)

);
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    setor VARCHAR (255),
    marca VARCHAR (255),
    nome VARCHAR (255),
    preco Decimal(8.2),
    categoria_id BIGINT,
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)

);

INSERT INTO tb_categoria(nome_categoria,quantidade)
VALUE ("cosméticos",100);

INSERT INTO tb_categoria(nome_categoria,quantidade)
VALUE ("drogaria",5000);

INSERT INTO tb_produtos(setor,marca,nome,preco)
VALUE ("cosméticos","Skala","Creme De Pentear",32.99);

INSERT INTO tb_produtos(setor,marca,nome,preco)
VALUE ("cosméticos","Dove","Shampoo",17.99);

INSERT INTO tb_produtos(setor,marca,nome,preco)
VALUE ("cosméticos","Dove","Condicionador",22.99);

INSERT INTO tb_produtos(setor,marca,nome,preco)
VALUE ("cosméticos","Sabonete","Phebo",7.99);

INSERT INTO tb_produtos(setor,marca,nome,preco)
VALUE ("Drogaria","Neo Quimica","Prednisona",10.99);

INSERT INTO tb_produtos(setor,marca,nome,preco)
VALUE ("Drogaria","Neo Quimica","Cetoprofeno",29.19);

INSERT INTO tb_produtos(setor,marca,nome,preco)
VALUE ("Drogaria","Allergan","Latisse",177.99);

INSERT INTO tb_produtos(setor,marca,nome,preco)
VALUE ("Drogaria","Allergan","Triplenex",206.39);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

 SELECT * FROM tb_categoria INNER JOIN tb_produtos
    ON tb_categoria.id = tb_produtos.categoria_id;
SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id WHERE setor LIKE '%cosméticos%';



