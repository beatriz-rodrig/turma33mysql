-- Crie um banco de dados para um serviço de um game Online , o nome do banco deverá
-- ter o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
-- informações dos personagens desse game. 

create database db_generation_game_online;

-- Selecionar o banco de dados
use db_generation_game_online;

-- Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 
-- 3 atributos relevantes da classe para se trabalhar com o serviço desse  game Online.

create table tb_classes(
	id bigint auto_increment,
    nome varchar(255),
    poder varchar(255),
    energia int,
    primary key (id) 
);
-- Popule esta tabela classe com até 5 dados.
insert into tb_classes (nome, poder, energia) 
		values ("maga", "bola de fogo", 90);
insert into tb_classes (nome, poder, energia) 
		values ("arqueira", "chuva de flechas", 100);
insert into tb_classes (nome, poder, energia) 
		values ("sereia", "agua transbordante", 120);
insert into tb_classes (nome, poder, energia) 
		values ("morte", "sugadora de almas", 150);
        insert into tb_classes (nome, poder, energia) 
		values ("feiticeira", "invisibilidade", 130);

select * from tb_classes;

-- Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos 
-- relevantes dos funcionários para se trabalhar com o serviço desse game Online
-- (não esqueça de criar a foreign key de tb_classe nesta tabela).

create table tb_personagens(
id bigint auto_increment,
nome varchar(20),
genero varchar(20),
raça varchar(20),
ataque int,
vida int,
primary key (id),
fk_id_classe bigint,
foreign key (fk_id_classe) references tb_classes(id)
);

-- Popule esta tabela personagem com até 8 dados.
insert into  tb_personagens (nome, genero, raça, ataque, vida, fk_id_classe) 
values ("Gustavo","ele", "Jacaré", 2000, 150, 1);
insert into  tb_personagens (nome, genero, raça, ataque, vida, fk_id_classe) 
values ("Joice","ela", "humana", 2010, 150, 3);
insert into  tb_personagens (nome, genero, raça, ataque, vida, fk_id_classe) 
values ("Juan","elu", "bullywug", 800, 50, 4);
insert into tb_personagens (nome, genero,raça, ataque,vida, fk_id_classe)
values ("Raniere", "elu", "Humana", 2200, 100, 2);
insert into tb_personagens (nome, genero,raça, ataque,vida, fk_id_classe)
values ("Beatriz", "ela", "Jacare", 2400, 120, 5);
insert into tb_personagens (nome, genero,raça, ataque,vida, fk_id_classe)
values ("Manuela", "ela", "Reptiliana", 1500, 90, 1);
insert into tb_personagens (nome, genero,raça, ataque,vida, fk_id_classe)
values ("Maria", "ele", "Reptiliana", 1800, 100, 2);
insert into tb_personagens (nome, genero,raça, ataque,vida, fk_id_classe)
values ("Joana", "ela", "bullywug", 2800, 130, 5);


select * from tb_personagens;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

select * from tb_personagens where ataque > 2000;


-- Faça um select trazendo  os personagens com vida entre 100 e 200.

select * from tb_personagens where vida between 100 and 200;

-- Faça um select  utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagens where nome like "%c%";

-- Faça um um select com Inner join entre  tabela classe e personagem.

select * from tb_personagens inner join tb_classes 
on tb_classes.id = tb_personagens.fk_id_classe;

-- Faça um select onde traga todos os personagem de uma classe específica
-- (exemplo todos os personagens que são arqueiros).
select * from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.fk_id_classe
where fk_id_classe = 2

