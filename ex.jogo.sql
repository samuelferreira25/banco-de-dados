create database db_generation_game_online;
create table tb_classe (
id bigint auto_increment,
Classe varchar (100),
Lane varchar (100),
primary key (id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar (50),
sexo varchar (1),
raca varchar (20),
governo varchar (20),
primary key (id)
);
insert into tb_classe (Classe, Lane)
values ("Controlador", "Smokar em pontos estratégicos" );
insert into tb_classe (Classe, Lane)
values ("Sentinela", "Colocar armadilhas para os inimigos");
insert into tb_classe (Classe, Lane)
values ("Iniciador", "Buscar informações das posições inimigas");
insert into tb_classe (Classe, Lane)
values ("Duelista", "Iniciar o confronto contra os inimigos");
insert into tb_classe (Classe, Lane)
values ("Curandeira", "Da suporte para o ime durante o confronto");


insert into tb_personagem (nome, sexo, raca, governo)
values ("Cypher", "M", "Alienigena", "Galaxiano");
insert into tb_personagem (nome, sexo, raca, governo)
values ("Omen", "M", "Alienigena", "Galaxiano");
insert into tb_personagem (nome, sexo, raca, governo)
values ("Renekton", "M", "Reptiliano", "Nacional");
insert into tb_personagem (nome, sexo, raca, governo)
values ("Jett", "F", "Humana", "Nacional"); 
insert into tb_personagem (nome, sexo, raca, governo)
values ("Reyna", "F", "Humana", "Nacional");
insert into tb_personagem (nome, sexo, raca, governo)
values ("Sage", "F", "Humana", "Nacional");
insert into tb_personagem (nome, sexo, raca, governo)
values ("Lacoste", "M", "Reptiliano", "Galaxiano");
insert into tb_personagem (nome, sexo, raca, governo)
values ("Freeza", "M", "Alienigena", "Galaxiano");

alter table tb_personagem add poder_ataque bigint;
alter table tb_personagem add poder_defesa bigint;

update tb_personagem
set 
poder_ataque = 2500
where
id = 1;
update tb_personagem
set
poder_defesa = 1600
where
id =1;
update tb_personagem
set 
poder_ataque = 2000
where
id = 2;
update tb_personagem
set
poder_defesa = 2000
where
id =2;
update tb_personagem
set 
poder_ataque = 3000
where
id = 3;
update tb_personagem
set
poder_defesa = 1500
where
id =3;
update tb_personagem
set 
poder_ataque = 4000
where
id = 4;
update tb_personagem
set
poder_defesa = 1200
where
id =4;
update tb_personagem
set 
poder_ataque = 3800
where
id = 5;
update tb_personagem
set
poder_defesa = 1100
where
id =5;
update tb_personagem
set 
poder_ataque = 1500
where
id = 6;
update tb_personagem
set
poder_defesa = 3000
where
id =6;
update tb_personagem
set 
poder_ataque = 1200
where
id = 7;
update tb_personagem
set
poder_defesa = 4000
where
id =7;
update tb_personagem
set 
poder_ataque = 3200
where
id = 8;
update tb_personagem
set
poder_defesa = 1700
where
id =8;



alter table tb_personagem add classe_id bigint;
update tb_personagem
SET 
classe_id = 2
where 
id = 1;
update tb_personagem
SET 
classe_id = 1
where 
id = 2;
update tb_personagem
SET 
classe_id = 4
where 
id = 3;
update tb_personagem
SET 
classe_id = 4
where 
id = 4;
update tb_personagem
SET 
classe_id = 4
where 
id = 5;
update tb_personagem
SET 
classe_id = 5
where 
id = 6;
update tb_personagem
SET 
classe_id = 3
where 
id = 7;
update tb_personagem
SET 
classe_id = 3
where 
id = 8;

alter table tb_personagem add constraint fk_classe_personagem
FOREIGN KEY (classe_id) references tb_classe (id);

select * from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id;
select * from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id where tb_classe.Classe = "Controlador";
select * from tb_personagem where poder_ataque > 2000;
select * from tb_personagem where poder_defesa BETWEEN 1000 AND 2000;
select * from  tb_personagem WHERE nome LIKE "%c%";














