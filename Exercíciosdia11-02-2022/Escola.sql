create database db_escola;

use db_escola;

create table tb_escola (
id bigint auto_increment,
nome varchar (255) not null,
data_nascimento date,
matricula int,
turrma varchar(10),
primary key (id)
);
alter table tb_escola add media int; 
-- alterando o nome de turrma para turma;
alter table tb_escola change turrma turma varchar(10);

insert into tb_escola (nome, data_nascimento, matricula, turma, media)
values ("Henrique", "1999-04-23", 1, "1B", 10);

insert into tb_escola (nome, data_nascimento, matricula, turma, media)
values ("Otto", "1990-05-23", 12, "1B", 5);

insert into tb_escola (nome, data_nascimento, matricula, turma, media)
values ("Melinda", "2000-08-19", 13, "2B", 8);

insert into tb_escola (nome, data_nascimento, matricula, turma, media)
values ("Tabhata", "2000-09-15", 14, "2C", 7);

select * from tb_escola;

select * from tb_escola where media < 7.00;
select * from tb_escola where media > 7.00;

update tb_escola set media = 6.00 where id = 2;

update tb_escola set media = 9.50 where id = 4;

