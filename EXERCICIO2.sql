CREATE DATABASE db_pizzariadozeh;

USE db_pizzariadozeh;

CREATE TABLE tb_categoria(
	id BIGINT auto_increment,
    nome_categoria VARCHAR (255),
    tamanho CHAR,
    
    PRIMARY KEY (id)

);
CREATE TABLE tb_pizzas (
	id BIGINT auto_increment,
	sabor VARCHAR (255),
    valor INT,
    acompanhamento VARCHAR (255),
    borda_recheada boolean,
    categoria_id BIGINT,
	  PRIMARY KEY (id),
      FOREIGN KEY(categoria_id)REFERENCES tb_categoria(id)

);
	INSERT INTO tb_categoria(nome_categoria,tamanho)
    VALUES ("Salgada","B");
    
    INSERT INTO tb_categoria(nome_categoria,tamanho)
    VALUES ("Salgada","M");
    
    INSERT INTO tb_categoria(nome_categoria,tamanho)
    VALUES ("Salgada","G");
    
    INSERT INTO tb_categoria(nome_categoria,tamanho)
    VALUES ("Doce","B");
    
    INSERT INTO tb_categoria(nome_categoria,tamanho)
    VALUES ("Doce","M");
    
    INSERT INTO tb_categoria(nome_categoria,tamanho)
    VALUES ("Doce","G");
    
    INSERT INTO tb_categoria(nome_categoria,tamanho)
    VALUES ("Vegetariana","P");
    
       INSERT INTO tb_categoria(nome_categoria,tamanho)
    VALUES ("Vegetariana","M");
    
       INSERT INTO tb_categoria(nome_categoria,tamanho)
    VALUES ("Vegetariana","G");
    

	INSERT INTO tb_pizzas(sabor,valor,acompanhamento,borda_recheada,categoria_id)
    VALUES("Mussarela",70,"Refrigerante De Guaraná",false,1);
    
    
	INSERT INTO tb_pizzas(sabor,valor,acompanhamento,borda_recheada,categoria_id)
    VALUES("Calabresa",50,"Suco",true,2);


	INSERT INTO tb_pizzas(sabor,valor,acompanhamento,borda_recheada,categoria_id)
    VALUES("Toscana",45,"Vinho",true,3);
    
    
	INSERT INTO tb_pizzas(sabor,valor,acompanhamento,borda_recheada,categoria_id)
    VALUES("Gorgonzola",85,"Agua Com Gás",false,3);
    
    
	INSERT INTO tb_pizzas(sabor,valor,acompanhamento,borda_recheada,categoria_id)
    VALUES("MM's",50,"Refrigerante De Soda",true,4);
    
    
	INSERT INTO tb_pizzas(sabor,valor,acompanhamento,borda_recheada,categoria_id)
    VALUES("Prestígio",70,"Coca Cola 500",true,5);
    
    
	INSERT INTO tb_pizzas(sabor,valor,acompanhamento,borda_recheada,categoria_id)
    VALUES("Romeu e Julieta",75,"Cola Cola 2L",true,6);
    
    
	INSERT INTO tb_pizzas(sabor,valor,acompanhamento,borda_recheada,categoria_id)
    VALUES("Abobrinha",45,"Suco",true,7);
    
    
	INSERT INTO tb_pizzas(sabor,valor,acompanhamento,borda_recheada,categoria_id)
    VALUES("Brócolis com Queijo",80,"Fanta Uva",true,8);
    
    
	INSERT INTO tb_pizzas(sabor,valor,acompanhamento,borda_recheada,categoria_id)
    VALUES("Escarola",80,"Vinho",true,3);
    
    SELECT * FROM tb_pizzas;
    
    SELECT * FROM tb_pizzas WHERE valor > 45;
	SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;
	SELECT * FROM tb_pizzas WHERE sabor LIKE '%M%';
    
    SELECT * FROM tb_pizzas INNER JOIN tb_categoria
    ON tb_categoria.id = tb_pizzas.categoria_id;
    
    SELECT * FROM tb_pizzas INNER JOIN tb_categoria
    ON tb_categoria.id WHERE nome_categoria LIKE "%doce%";
