create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categorias(
id bigint auto_increment,
categorias varchar (100),
primary key (id)
);

INSERT INTO tb_categorias (categorias) VALUES ("Citricas");
INSERT INTO tb_categorias (categorias) VALUES ("Doces");
INSERT INTO tb_categorias (categorias) VALUES ("SemiDoce-cítricas");


CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
   Nome VARCHAR(255) not  null,
    preco decimal (5,2),
    categoria_id BIGINT,
    primary key(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (Nome, preco, categoria_id) 
VALUES ("Maça", 13.00, 3);
INSERT INTO tb_produtos (Nome, preco, categoria_id) 
VALUES ("Manga", 15.00, 3);
 INSERT INTO tb_produtos (Nome, preco, categoria_id) 
VALUES ("Laranja", 7.00, 1);
INSERT INTO tb_produtos (Nome, preco, categoria_id) 
VALUES ("Banana", 9.00, 2);
INSERT INTO tb_produtos (Nome, preco, categoria_id) 
VALUES ("Uva verde", 20.00, 2);


select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3.0 and 60.0;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id where tb_categorias.id = 3;


