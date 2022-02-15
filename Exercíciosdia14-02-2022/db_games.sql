create database db_generation_game_online;

use db_generation_game_online;

-- criar tabela tb_classes;
create table tb_classes(
id bigint auto_increment,
poder varchar (55) not null,
primary key (id)
);


insert into tb_classes (poder) values ("Força");
insert into tb_classes (poder) values ("Resistencia");
insert into tb_classes (poder) values ("Velocidade");
insert into tb_classes (poder) values ("Invisibilidade");
insert into tb_classes (poder) values ("Controle mental");

-- Criar a tabela tb_personagens
create table tb_personagens(
id bigint auto_increment,
nome varchar(55) not null,
categoria varchar(55) not null,
poder_de_ataque int,
poder_de_defesa int,
classes_id bigint,
primary key (id),
foreign key (classes_id) references tb_classes(id)
);

-- criando personagens;
insert into tb_personagens (nome, categoria, poder_de_ataque, poder_de_defesa, classes_id) 
values ("Mulher Maravilha", "Heroi", 1900, 2100, 1);
insert into tb_personagens (nome, categoria, poder_de_ataque, poder_de_defesa, classes_id) 
values ("Colossus", "Vilão", 2500, 2100, 1);
insert into tb_personagens (nome, categoria, poder_de_ataque, poder_de_defesa, classes_id) 
values ("Flesh", "Heroi", 1500, 3000, 3);
insert into tb_personagens (nome, categoria, poder_de_ataque, poder_de_defesa, classes_id) 
values ("Violeta", "Heroi", 1700, 2100, 4);
insert into tb_personagens (nome, categoria, poder_de_ataque, poder_de_defesa, classes_id) 
values ("Professor Xavier", "Heroi", 1000, 2700, 5);
insert into tb_personagens (nome, categoria, poder_de_ataque, poder_de_defesa, classes_id) 
values ("Thanos", "Vilão", 2500, 5000, 2);

select * from tb_personagens;

Select * from tb_personagens where poder_de_ataque > 2000;
-- nenhum dos meus personagens tem poder de defesa entre 1000 e 2000, por isso a tabela aparece vazia;

-- between mostra intevalo entre valores;
Select * from tb_personagens where poder_de_defesa BETWEEN 1000 AND 2000;
-- Mostrando personagem que comece com a letra C;
select * from tb_personagens where nome Like "C%";
-- inner join entre tabela classe e personagem;
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id;
-- mostrando apenas personagens com a habilidade do id 2: Resistencia:
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id where tb_classes.id = 2;
