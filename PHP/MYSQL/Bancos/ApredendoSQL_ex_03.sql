DROP DATABASE cadastro;

CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE cadastro;

CREATE TABLE tb_pessoas(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30),
nacimento DATE,
sexo ENUM('M','F'),
peso DECIMAL(5,2),
altura DECIMAL(3,2),
nacionalidade VARCHAR(20) DEFAULT 'Brasil',
CONSTRAINT PK_pessoa PRIMARY KEY(id)
)DEFAULT CHARSeT utf8;

CREATE TABLE IF NOT EXISTS tb_cursos(
nome VARCHAR(30) NOT NULL UNIQUE,
descricao TEXT,
carga INT,
totalHoras INT UNSIGNED,
ano YEAR DEFAULT '2016'
)DEFAULT CHARSeT utf8;

DESC tb_cursos;

/*****************Alterando tableas*****************/
ALTER TABLE tb_pessoas 
ADD COLUMN profissao VARCHAR(20);

ALTER TABLE tb_pessoas DROP COLUMN profissao;

/*Adicionando coluna depois de uma escolhida*/

ALTER TABLE tb_pessoas ADD COLUMN profissao VARCHAR(20) AFTER nome;

/*Colocar no primerio*/

ALTER TABle tb_pessoas ADD COLUMN codigo INT FIRST;
ALTER TABLE tb_cursos ADD COLUMN idcurso INT FIRST;
/*Modificando o campo*/

ALTER TABLE tb_pessoas MODIFY COLUMN profissao VARCHAR(50) NOT NULL DEFAULT '';

/*MOdificando o nome da coluna */
ALTER TABLE tb_pessoas CHANGE COLUMN profissao prof VARCHAR(50) NOT NULL DEFAULT '';

/*RENOMEAR A TAbela*/

ALTER TABLE tb_pessoas
RENAME TO tb_gafanhotos;

/**Adicionado primery key*/

ALTER TABLE tb_cursos ADD
constraint PK_curso PRIMARY KEY(idcurso);

ALTER TABLE tb_cursos MODIFY COLUMN idcurso INT AUTO_INCREMENT; 
/************************************************************************************************/

DESC tb_gafanhotos;
DESC tb_cursos;
