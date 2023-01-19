-- rh exercicios
CREATE DATABASE RH;

USE rh;
CREATE TABLE colaboradores (
	ID BIGINT auto_increment,
	Nome VARCHAR (255),
	Sobrenome VARCHAR (255),
    Cargo VARCHAR (255),
    Salario DECIMAL (7,2),
    
    PRIMARY KEY (id)
        );
            
INSERT INTO colaboradores (Nome, Sobrenome, Cargo, Salario)
    VALUES  ("Joao","Assis Pereira", "GERENTE", 4.200);
    
	INSERT INTO colaboradores (Nome, Sobrenome, Cargo, Salario)
    VALUES  ("Anderson","Sales", "Vendedor", 2.200);
    
        INSERT INTO colaboradores (Nome, Sobrenome, Cargo, Salario)
    VALUES  ("Gabriela","Martins", "Vendedora", 2.200);
    
        INSERT INTO colaboradores (Nome, Sobrenome, Cargo, Salario)
    VALUES  ("Victoria","Stafonelli Pereira", "RECEPCIONISTA", 1.200);
    
    	INSERT INTO colaboradores (Nome,Sobrenome,Cargo,Salario)
    VALUES  ("Vitor","Andrade Correa", "Vendedor",2.200);
    
    SELECT * FROM  colaboradores;
    SELECT * FROM colaboradores WHERE salario < 2000;
    SELECT * FROM colaboradores WHERE salario > 2000;
    
    DELETE FROM colaboradores WHERE ID=2;
    