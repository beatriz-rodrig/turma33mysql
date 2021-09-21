-- Atividade 3

-- Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter 
-- o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as informações dos produtos desta empresa. 
create database db_farmacia_do_bem

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine
-- 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
produto varchar (20),
estoque int (100),
ativo boolean,
primary key (id)
);

-- Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria (produto, estoque, ativo) values ("Cosmetico", 100 , true);
insert into tb_categoria ( produto, estoque, ativo) values ("Remedio ", 100 , true);
insert into tb_categoria (produto, estoque, ativo) values (" Higiene ", 100, true);
insert into tb_categoria (produto, estoque, ativo) values (" Maquiagem ", 100 , true);
insert into tb_categoria (produto, estoque, ativo) values (" Fitness ", 100, true);

select * from tb_categoria;

-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos
--  relevantes dos tb_produto para se trabalhar com o serviço deste farmacia

create table  tb_produto (
id Bigint auto_increment,
nome varchar (100),
marca varchar (100),
tamanho varchar (100),
validade date,
valor decimal (20, 2),
primary key (id),
fk_id_categoria bigint,
foreign key (fk_id_categoria) references tb_categoria(id)
);

select * from tb_produto;

-- Popule esta tabela Produto com até 8 dados.

insert into tb_produto (nome, marca, tamanho, validade, valor, fk_id_categoria)
values ("Oleo de mosqueta", "simpleOrganic", "20 ml", "2025/08/19", 110.00, 1);
insert into tb_produto (nome, marca, tamanho, validade, valor, fk_id_categoria)
values ("Piroxicam", "Feldene", "20 mg", "2023/07/23", 13.99 , 2);
insert into tb_produto (nome, marca, tamanho, validade, valor, fk_id_categoria)
values ("Desodorante", "Dove", "150 ml", "2024/06/13", 12.90 , 3);
insert into tb_produto (nome, marca, tamanho, validade, valor, fk_id_categoria)
values ("Batom", "Boticario", "5 ml", "2021/09/21", 40.00, 4);
insert into tb_produto (nome, marca, tamanho, validade, valor, fk_id_categoria)
values ("Suplemento", "Whey", "907 g", "2022/06/11", 124.90, 5);
insert into tb_produto (nome, marca, tamanho, validade, valor, fk_id_categoria)
values ("Hidratante", "Nivea", "400 ml", "2024/01/30", 19.99, 1);
insert into tb_produto (nome, marca, tamanho, validade, valor, fk_id_categoria)
values ("Blush", "Vult", "5 g", "2023/05/04", 24.99, 4);
insert into tb_produto (nome, marca, tamanho, validade, valor, fk_id_categoria)
values ("Barra de cereal ", "Nutri", "25 g", "2022/11/11", 3.99, 5);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
 select * from tb_produto where valor > 50;
 
 -- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
 select * from tb_produto where valor between 3 and 60;
 
-- Faça um select  utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "%b%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.fk_id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica
-- (exemplo todos os produtos que são cosméticos).
select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.fk_id_categoria
where fk_id_categoria = 1



 



