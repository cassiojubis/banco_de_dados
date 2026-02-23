	CREATE DATABASE  bd_cinema;
    
CREATE TABLE cinema(
	 cine_id INT(5) auto_increment,
     cine_nome  VARCHAR(100) not null,
     cine_cnpj VARCHAR(100)  not null,
     cine_lotacao INT(2) not null,
     primary key pk_cinema (cine_id),
     unique key uk_cinema_cnpj(cine_cnpj)
);

CREATE table genero(
gene_id INT(5) AUTO_INCREMENT,
gene_nome VARCHAR(100) NOT NULL,
PRIMARY KEY pk_genero(gene_id)
);
CREATE TABLE filme(
film_id INT(5) AUTO_INCREMENT,
film_titulo VARCHAR(100) NOT NULL,
film_ano  INT(4) NOT NULL,
film_faixa_etaria INT(2) NOT NULL,
gene_id INT(5),
PRIMARY KEY pk_filme(film_id),
foreign key fk_filme_genero(gene_id)  references genero(gene_id)
);

CREATE  TABLE exibicao(
cine_id INT(5) not null,
film_id INT(5) not null,
exib_dt_inicio DATE NOT NULL,
exib_vl_ingresso DECIMAL(10,2) NOT NULL,
primary key  pk_exibicao(cine_id, film_id),
foreign key fk_exibicao_cinema(cine_id) references cinema(cine_id),
foreign key  fk_exibicao_filme(film_id) references filme(film_id)
);

CREATE TABLE endereco(
ende_id INT(5) auto_increment,
ende_rua VARCHAR(100) NOT NULL,
ende_numero VARCHAR(100) NOT NULL,
ende_bairro VARCHAR(100) NOT NULL,
ende_cidade VARCHAR(100) NOT NULL,
ende_uf CHAR(2) NOT NULL,
cine_id INT(5) not null,
primary key  pk_endereco(ende_id),
foreign key fk_endereco_cinema(cine_id) references cinema(cine_id)
);

-- alter add nova coluna/campo
alter table cinema add column cine_email VARCHAR(50) NOT NULL;
alter table cinema add column cine_telefone VARCHAR(20) NOT NULL;

-- REMOVER UMA COLUNA/CAMPO
ALTER TABLE cinema DROP cine_telefone;

-- ALTERAR TIPO E TAMANHO DA COLUNA/CAMPO
ALTER TABLE cinema  modify cine_email varchar(100) not null;

-- ALTERAR O  NOME DA tabela
ALTER TABLE endereco RENAME endereco_cinema;

-- Criar um index 
CREATE INDEX ix_filme_titulo ON filme(film_titulo);

-- ALTERAR UM INDEX 
ALTER TABLE filme ADD INDEX ix_filme_ano(film_ano);

-- ALTERAR UM INDEX
ALTER TABLE film ADD INDEX ix_filme_ano  (film_ano);