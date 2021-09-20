create database db_rh
use db_rh;
create table tb_funcionaries (

id bigint (5) auto_increment,
nome varchar (50) not null,
cargo varchar (50) not null,
cpf varchar (20) not null,
ativo boolean,
salario decimal (20,2) not null,
primary key (id)
);tb_beneficios

INSERT INTO tb_funcionaries (nome, cargo, cpf, ativo, salario ) VALUES ("Beatriz Rodrigues", " Desenvolvedora Java Junior", "123.456.789-00", true, 4120.99); 
INSERT INTO tb_funcionaries (nome, cargo, cpf, ativo, salario ) VALUES ("Rafael Rodrigues", " Diretor de arte", "321.654.987-00", true, 5340.25); 
INSERT INTO tb_funcionaries (nome, cargo, cpf, ativo, salario ) VALUES ("Bianca Mendes", " Recepcionista", "987.654.321-10", true, 1200.00); 
INSERT INTO tb_funcionaries (nome, cargo, cpf, ativo, salario ) VALUES ("Manuela Alves", " Analista Contabil", "123.654.378-00", true, 1999.99); 
INSERT INTO tb_funcionaries (nome, cargo, cpf, ativo, salario ) VALUES ("Lucas Santos", " Faxineiro", "654.876.999-99", true, 1040.75); 

select * from tb_funcionaries WHERE salario > 2000

select * from tb_funcionaries WHERE salario < 2000

select * from tb_funcionaries
UPDATE tb_funcionaries SET salario=' 6200 ' WHERE id=2 