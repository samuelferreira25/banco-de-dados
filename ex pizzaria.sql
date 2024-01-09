create database db_pizzaria;
create table tb_categorias (
id bigint auto_increment,
Nome varchar (100),
Descricao varchar (100),
primary key (id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar (255),
ingredientes varchar (255),
tamanho varchar(255),
preco float (3,2),
primary key (id)	
);

alter table tb_produtos
modify preco decimal (6,2);
 
insert into tb_categorias (Nome, Descricao)
values  ("pizza", "Pizza Grande 8 pedaços");
insert into tb_categorias (Nome, Descricao)
values  ("Pizza", "Pizza broto 6 pedaços");
insert into tb_categorias (Nome, Descricao)
values  ("esfiha", "esfiha grande");
insert into tb_categorias (Nome, Descricao)
values  ("esfiha", "esfiha pequena");
insert into tb_categorias (Nome, Descricao)
values  ("Combo pizza", "Uma pizza grande + refrigerante 2L");

insert into tb_produtos (nome, ingredientes, tamanho, preco)
values ("Pizza Calabresa", "Calabresa com cebola", "Grande", 44.90);
insert into tb_produtos (nome, ingredientes, tamanho, preco)
values ("Pizza Frango", "Frango com catupiry", "Grande", 45.90);
insert into tb_produtos (nome, ingredientes, tamanho, preco)
values ("Pizza Bacon", "Bancon com mussarela", "Grande", 47.90);
insert into tb_produtos (nome, ingredientes, tamanho, preco)
values ("Pizza calabresa", "Calabresa com cebola", "broto", 33.90);
insert into tb_produtos (nome, ingredientes, tamanho, preco)
values ("Pizza Frango", "Frango com catupiry", "broto", 33.90);
insert into tb_produtos (nome, ingredientes, tamanho, preco)
values ("Pizza Bacon", "Bacon com mussarela", "broto", 33.90);
insert into tb_produtos (nome, ingredientes, tamanho, preco)
values ("esfiha Carne", "Carne com vinagrete", "Grande", 13.90);
insert into tb_produtos (nome, ingredientes, tamanho, preco)
values ("esfiha Carne", "Calabresa com cebola", "Pequena", 7.90);
insert into tb_produtos (nome, ingredientes, tamanho, preco)
values ("Combo pizza", "a escolha do cliente", "Grande", 53.90 );

update tb_produtos set preco = 7.90 where id = 8;
alter table tb_produtos add classe_id bigint;
update tb_produtos
SET 
classe_id = 1
where 
id = 1;

update tb_produtos
SET 
classe_id = 2
where 
id = 1;
update tb_produtos
SET 
classe_id = 3
where 
id = 1;
update tb_produtos
SET 
classe_id = 2
where 
id = 4;
update tb_produtos
SET 
classe_id = 2
where 
id = 5;
update tb_produtos
SET 
classe_id = 2
where 
id = 6;
update tb_produtos
SET 
classe_id = 3
where 
id = 7;
update tb_produtos
SET 
classe_id = 4
where 
id = 8;
update tb_produtos
SET 
classe_id = 5
where 
id = 9;

alter table tb_produtos add constraint fk_classe_produtos
FOREIGN KEY (classe_id) references tb_categorias (id);

select * from tb_produtos inner join tb_categorias on tb_produtos.classe_id = tb_categorias.id;
select tb_produtos.nome , tamanho, tb_categorias.Descricao from tb_produtos inner join tb_categorias on tb_produtos.classe_id = tb_categorias.id where tamanho = "broto";
select * from tb_produtos where preco > 45.00;
select * from tb_produtos where preco between  50.00 and 100;
select * from  tb_produtos WHERE nome LIKE "%M%";



