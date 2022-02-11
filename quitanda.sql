create database quitanda;
--  criar o banco de dados quitanda

use quitanda;


create table tabela_produtos (
id bigint auto_increment,
nome varchar (255) not null,
quantidade int,
preco decimal,
primary key (id)

);
insert into tabela_produtos (nome, quantidade, preco)
values ("Maça", 10, 1.99);
insert into tabela_produtos (nome, quantidade, preco)
values ("Banana", 13, 4.99);
insert into tabela_produtos (nome, quantidade, preco)
values ("Manga", 20, 5.49);
insert into tabela_produtos (nome, quantidade, preco)
values ("Melancia", 3, 10.00);
insert into tabela_produtos (nome, quantidade, preco)
values ("Cebola", 100, 1.50);
-- definindo o valor, quantidade e preço de produtos;




select * from tabela_produtos;
-- solicitando para ver a tabela completa;

update tabela_produtos set preco = 1.99 where id = 1;

delete from tabela_produtos where id = 7; 
-- apagando produto informando o número do id;

alter table tabela_produtos modify preco decimal(8,2);
-- modificando o preço para decimal com 2 casas apos a virgula;

set SQL_SAFE_UPDATE = 0;


alter table tabela_produtos add descricao varchar(255);

