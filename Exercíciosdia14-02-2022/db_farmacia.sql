create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categorias(
id bigint auto_increment,
Categoria varchar (100),
primary key (id)
);

INSERT INTO tb_categorias (Categoria) VALUES ("Remedios");
INSERT INTO tb_categorias (Categoria) VALUES ("Higene");
INSERT INTO tb_categorias (Categoria) VALUES ("Remedios controlados");

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
   Nome VARCHAR(255) not  null,
    preco decimal (5,2),
    marca varchar (100),
    data_validade date,
    categoria_id BIGINT,
    primary key(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (Nome, preco, marca, data_validade, categoria_id) 
VALUES ("Fralda", 30.00, "Pompom", "2025-02-19", 2 );
INSERT INTO tb_produtos (Nome, preco, marca, data_validade, categoria_id) 
VALUES ("Pasta de dente", 7.00, "Colgate", "2025-02-15", 2 );
INSERT INTO tb_produtos (Nome, preco, marca, data_validade, categoria_id) 
VALUES ("Analgesico", 5.00, "Dorflex", "2025-02-19", 1 );
INSERT INTO tb_produtos (Nome, preco, marca, data_validade, categoria_id) 
VALUES ("Anto-inflamatorio", 18.00, "Diclofenaco", "2025-02-19", 1);
INSERT INTO tb_produtos (Nome, preco, marca, data_validade, categoria_id) 
VALUES ("Clonazepam", 100.00, "Neo quimica", "2025-02-01", 3);
INSERT INTO tb_produtos (Nome, preco, marca, data_validade, categoria_id) 
VALUES ("Lorazepam", 120.00, "Neo quimica", "2025-02-01", 3 );

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3.0 and 60.0;
select * from tb_produtos where nome like "%b%";

select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id where tb_categorias.id = 1;



