create database db_pizzaria_legal;

use  db_pizzaria_legal;


create table tb_categoria(
id bigint auto_increment,
Tiposdepizza varchar (255),
Valorpizza decimal (5.2),
primary key (id)
);

INSERT INTO tb_categoria (Tiposdepizza, Valorpizza) VALUES ("Doce", 55.90);
INSERT INTO tb_categoria (Tiposdepizza, Valorpizza) VALUES ("Salgadas", 49.99);
INSERT INTO tb_categoria (Tiposdepizza, Valorpizza) VALUES ("Veganas", 35.00);
INSERT INTO tb_categoria (Tiposdepizza, Valorpizza) VALUES ("Bebidas", 10.00);


CREATE TABLE tb_pizza (
    id BIGINT AUTO_INCREMENT,
    Sabores VARCHAR(255),
    Bebidas VARCHAR(255),
    categoria_id BIGINT,
    primary key(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);
 
 insert into tb_pizza (Sabores, categoria_id)
 values ("Frango com catupiry", 2);
  insert into tb_pizza (Sabores, categoria_id)
 values ("Chcolate M&MS", 1);
  insert into tb_pizza (Sabores, categoria_id)
 values ("Milho verde", 3);
  insert into tb_pizza (Sabores, categoria_id)
 values ("Bacon", 2);
 insert into tb_pizza (Bebidas, categoria_id)
 values ("Coca-Cola", 4);
 insert into tb_pizza (Bebidas, categoria_id)
 values ("Garana antartica", 4);
 insert into tb_pizza (Bebidas, categoria_id)
 values ("Agua", 4);
 
 select * from tb_pizza;
 -- between mostra intevalo entre valores;
 
Select * from tb_categoria where Valorpizza BETWEEN 29.00 AND 60.00;
-- mostrando sabores de pizza que tenha a letra c;
select * from tb_pizza where sabores like "%c%";
-- mostrando a relação entre tabela pizza e tabela categoria;
select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id where tb_categoria.id = 2;


 