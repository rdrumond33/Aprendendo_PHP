CREATE DATABASE hqcode 
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

use hqcode;

CREATE TABLE tb_funcionarios(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
salario DECIMAL(10,2),
admicao DATE,
sexo ENUM('M','F'),
cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
PRIMARY KEY(id)
)DEFAULT CHARSET = utf8;

CREATE TABLE tb_pessoas(
id INT NOT NULL AUTO_INCREMENT, 
nome VARCHAR(100),
sexo ENUM('M','F'),
PRIMARY KEY(id)
)DEFAULT CHARSET = utf8;

/*Descreva*/
DESC tb_pessoas;
DESC tb_funcionarios;

/*insere*/
INSERT INTO tb_pessoas VALUES(DEFAULT ,'luiz', 'M');

INSERT INTO tb_pessoas (nome,sexo) VALUES('rodrigo','M');

INSERT INTO tb_pessoas (nome, sexo) VALUES
('Maria' , 'F'),
('MArta','F'),
('LUIS','M'),
('MATHEUS','M'),
('CARLOS','M');


SELECT * FROM tb_funcionarios;
SELECT * FROM tb_pessoas;

/*adicionando na tabela usando select*/
INSERT INTO tb_funcionarios
SELECT id,nome,910 ,CURRENT_DATE(),sexo,null FROM tb_pessoas;

/*a funcao COUNT conta cada linha em tb_funcionario*/
/*AS e um apelido de COUNT*/
SELECT COUNT(*) AS total FROM tb_funcionarios;

/*CONVERT(isso ,para isso ) converte para*/
SELECT nome , salario AS atual,
CONVERT(salario*1.155, DEC(10,3)) AS 'salario com aumento de 10 porcento'
FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE sexo = 'F' AND salario>1000;

SELECT * FROM tb_funcionarios WHERE sexo = 'M' OR salario>1000;

UPDATE tb_funcionarios SET nome='jennifer' WHERE id = 3;

/**********BUSCAR**********/

SELECT * FROM tb_funcionarios WHERE nome LIKE '%o%';

/*Por pocissao usando _ */
SELECT * FROM tb_funcionarios WHERE nome LIKE '__s%';

/**/
SELECT * FROM tb_funcionarios WHERE nome NOT LIKE 'r%';

/*ENTRE uma faixa de busca */
SELECT * FROM tb_funcionarios WHERE salario BETWEEN 1000 AND 2000;

/*ENTRE uma faixa de busca que nao esta nessa faixa*/
SELECT * FROM tb_funcionarios WHERE salario NOT BETWEEN 1000 AND 2000;


SELECT * FROM tb_funcionarios 
WHERE SOUNDEX(nome) = SOUnDEX('luiz');

UPDATE tb_funcionarios SET admicao =
DATE_ADD(CURRENT_DATE(),INTERVAL 60 DAY) 
where id =1;

SELECT DATEDIFF(admicao,CURRENT_DATE())
AS 'diferenca de dias' 
FROM tb_funcionarios where id = 1;

SELECT * FROM tb_funcionarios WHERE id = 1 ;

/*Orderna*/
/*Ordenar por nome */
SELECT * FROM tb_funcionarios ORDER BY nome;

/*ORdenar por slario do maior por menor*/
SELECT * FROM tb_funcionarios ORDER BY salario DESC;

/*sub consulta */
SELECT * FROM tb_funcionarios ORDER BY salario DESC,
nome DESC;


/*UPDATE*/

UPDATE tb_funcionarios SET salario = 5000 WHERE id = 5;

/**DELETE*/

START TRANSACTION;

DELETE FROM tb_pessoas WHERE id = 3;

SELECT * FROM tb_pessoas WHERE id ;

/*VOLTA */
ROLLBACK;

/*CONFIRMA*/
COMMIT;

