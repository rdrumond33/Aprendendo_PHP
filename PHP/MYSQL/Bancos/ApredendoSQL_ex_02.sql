
CREATE TABLE tb_pessoas(
	idpessoa INT AUTO_INCREMENT NOT NULL,
	desnome VARCHAR(256) NOT NULL,
    dtcadastro timestamp NOT NULL DEFAULT current_timestamp(),
    CONSTRAINT PK_pessoas PRIMARY KEY (idpessoa)
)DEFAULT CHARSET = utf8
 ENGINE = InnoDB;
 
 CREATE table tb_funcionarios(
	idfuncionario INT AUTO_INCREMENT NOT NULL,
    idpessoa INT NOT NULL,
    valor DECIMAL(10,3),
    datadmissao DATE NOT NULL,
    CONSTRAINT PK_funcionarios PRIMARY KEY (idfuncionario),
    CONSTRAINT FK_funcionarios_pessoa foreign key(idpessoa)
		REFERENCES tb_pessoas(idpessoa)
 );
 
 INSERT INTO tb_pessoas VALUES(DEFAULT, 'Rodrigo' , DEFAULT);
 
 SELECT * FROM tb_pessoas;
 SELECT * FROM tb_funcionarios;
 
 INSERT INTO tb_funcionarios VALUES(DEFAULT, 1 , 500 , CURRENT_DATE());
 
 
 /*****INER JOIN*********/
 
 SELECT * 
 FROM tb_funcionarios a
 INNER JOIN tb_pessoas b
 ON a.idpessoa = b.idpessoa;