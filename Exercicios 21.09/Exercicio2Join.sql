-- Atividade 2

-- Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter 
-- o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as informações dos produtos
-- desta empresa.

create database db_pizzaria_legal;

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos 
-- relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
nome varchar (200),
produto varchar (20),
ativo boolean,
primary key (id)
);

select * from tb_categoria;

-- Popule esta tabela Categoria com até 5 dados.
insert into tb_categoria (nome, produto, ativo) values (" Pizza doce ", "caixa para 6", true);
insert into tb_categoria (nome, produto, ativo) values (" Pizza salgada ", "caixa para 8", true);
insert into tb_categoria (nome, produto, ativo) values (" Pizza metro ", "caixa para 30", true);
insert into tb_categoria (nome, produto, ativo) values (" Pizza broto ", "caixa para 4", true);
insert into tb_categoria (nome, produto, ativo) values (" Pizza familia ", "caixa para 16", true);


-- Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos 
-- relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de criar 
-- a foreign key de tb_categoria nesta tabela).

create table tb_pizza (
id bigint auto_increment,
nome varchar (100),
recheio varchar (100),
molho varchar (100),
borda varchar (50),
preco decimal (10,2),
primary key (id),
fk_id_categoria bigint,
foreign key (fk_id_categoria) references tb_categoria(id)
);
-- Popule esta tabela pizza com até 8 dados.
insert into tb_pizza (nome, recheio, molho, borda, preco, fk_id_categoria ) 
	values ("Peperoloka", "pepperoni", "molho de tomate", "catupiry", 35.50, 4);
    insert into tb_pizza (nome, recheio, molho, borda, preco, fk_id_categoria) 
	values ("Carneloka", "carne", "molho de tomate", "cheddar", 48.50, 2);
    insert into tb_pizza (nome, recheio, molho, borda, preco, fk_id_categoria) 
	values ("AMIGADANATUREZA", "brocolis", "molho branco", "catupiry", 65.20, 3);
    insert into tb_pizza (nome, recheio, molho, borda, preco, fk_id_categoria) 
	values ("Nordestina", "carneseca", "molho de pimenta", "sem borda", 75.50, 5);
    insert into tb_pizza (nome, recheio, molho, borda, preco, fk_id_categoria) 
	values ("Frangarella", "frango", "molho de tomate", "cheddar", 28.50, 4);
    insert into tb_pizza (nome, recheio, molho, borda, preco, fk_id_categoria) 
	values ("Light", "peito de peru", "molho branco", "mussarela", 35.50, 3);
    insert into tb_pizza (nome, recheio, molho, borda, preco, fk_id_categoria) 
	values ("chocobanana", "banana", "sem molho", "chocolate", 32.00, 1);
    insert into tb_pizza (nome, recheio, molho, borda, preco, fk_id_categoria) 
	values ("sensação", "morango", "sem molho", "chocolate", 38.00, 1);
    
    select * from tb_pizza;
    
   -- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
   
   select * from tb_pizza where preco > 45;
   
   -- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
select * from tb_pizza where preco between 29 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where nome like "%c%";

-- Faça um um select com Inner join entre  tabela categoria e pizza.
select * from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.fk_id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica 
-- (exemplo todos os produtos que são pizza doce).

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.fk_id_categoria
where fk_id_categoria = 1




