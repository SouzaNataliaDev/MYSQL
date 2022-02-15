use Funcionarios;

create table tabale_funcionarios(
id bigint auto_increment,
nome varchar(255),
idade int,
setor varchar(255),
função varchar(255),
salario decimal(8,2),
primary key (id)
);

insert into tabale_funcionarios (nome, idade, setor, função, salario)
values ("Amanda", 23, "Administrativo", "Auxiliar", 1900.00);

insert into tabale_funcionarios (nome, idade, setor, função, salario)
values ("Anderson", 23, "Tecnologia", "Desenvolvedor", 3900.00);
insert into tabale_funcionarios (nome, idade, setor, função, salario)
values ("Heitor", 55, "Administrativo", "Gerente de projetos", 5900.00);
insert into tabale_funcionarios (nome, idade, setor, função, salario)
values ("Victoria", 30, "RH", "Estagiaria", 1800.00);

Select * from tabale_funcionarios;

 Select * from tabale_funcionarios where salario < 2000.00;
 
Select * from tabale_funcionarios where salario > 2000.00;

update tabale_funcionarios set salario = 25000.00 WHERE id = 6;

Update tabale_funcionarios set salario = 1900.00 WHERE id = 4;

delete from tabale_funcionarios where id = 5;
delete from tabale_funcionarios where id = 4;

