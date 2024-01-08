create table funcionarios(
id int primary key,
nome varchar (50),
idade tinyint,
sexo char (1),
cargo varchar (50),
salario float (10,2)
);
alter table funcionarios add column id  int primary key;
insert into funcionarios values
("Samuel", 21, "M", "desenvolvedor jr", 3000.00,1),
("Eric", 21, "M", "desenvolvedor Senior", 6300.90,2),
("Jorge", 21, "M", "auxiliar ", 1500.00,3);

select * from funcionarios where salario > 2000;
select * from funcionarios where salario < 2000;
update funcionarios set salario = 5000.00 where id = 1;