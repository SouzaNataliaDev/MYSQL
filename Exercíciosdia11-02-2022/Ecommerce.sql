create database db_ecommerce;

-- usando banco de dados
use db_ecommerce;

create table tabela_produtos(
	id bigint auto_increment,
    Nome varchar(200),
   Marca varchar(10),
categoria varchar(100),
    preco decimal(5,2),
    primary key (id)
);

-- inserindo dados na tabela
insert into tabela_produtos (nome, marca, categoria, preco)
 values ("Calça jogger", "Sawary", "Calça", 120.00);
 
insert into tabela_produtos (nome, marca, categoria, preco)
 values ("Corta vento", "Nike", "Agasalho", 350.00);
 
 insert into tabela_produtos (nome, marca, categoria, preco)
 values ("Camisa basica", "Adidas", "Camiseta", 80.00);
 
 insert into tabela_produtos (nome, marca, categoria, preco)
 values ("Air force", "Nike", "Tenis", 500.00);
 
-- Mostrando tabela;
select * from tabela_produtos;

select * from tabela_produtos where preco < 500.00;

select * from tabela_produtos where preco > 500.00;

-- Alterando valor dos produtos
Update tabela_produtos set preco = 600.00 WHERE id = 1;

Update tabela_produtos set preco = 100.00 WHERE id = 4;