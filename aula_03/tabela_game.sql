create database db_game_online;
use db_game_online;

create table tb_classes(
id bigint auto_increment,
class varchar(255) not null,
hp int,
arma varchar (255) not null,
primary key(id)
);

insert into tb_classes (class, hp, arma) values("Guerreiro", 100, "Espada");
insert into tb_classes (class, hp, arma) values("Mago", 100, "Cajado");
insert into tb_classes (class, hp, arma) values("Ladino", 100, "Faca");
insert into tb_classes (class, hp, arma) values("Elfo", 100, "Arco e Flecha");
insert into tb_classes (class, hp, arma) values("Barbaro", 100, "Machado");

select * from tb_classes;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
forca int,
magia int,
inteligencia int,
defesa int,
agilidade int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

drop table tb_classe;
select * from tb_personagem;

insert into tb_personagem (nome, forca, magia, inteligencia, defesa, agilidade, classe_id) values ("Cadman", 8, 1, 6, 4, 6, 1);
insert into tb_personagem (nome, forca, magia, inteligencia, defesa, agilidade, classe_id) values ("Dumbledore", 3, 10, 10, 5, 4, 2);
insert into tb_personagem (nome, forca, magia, inteligencia, defesa, agilidade, classe_id) values ("Garrett", 5, 2, 8, 6, 8, 3);
insert into tb_personagem (nome, forca, magia, inteligencia, defesa, agilidade, classe_id) values ("Katness", 3, 5, 8, 7, 7, 4);
insert into tb_personagem (nome, forca, magia, inteligencia, defesa, agilidade, classe_id) values ("Conan", 10, 1, 4, 4, 3, 5);
insert into tb_personagem (nome, forca, magia, inteligencia, defesa, agilidade, classe_id) values ("Maxxor", 9, 2, 5, 6, 5, 1);
insert into tb_personagem (nome, forca, magia, inteligencia, defesa, agilidade, classe_id) values ("Najarin", 3, 10, 8, 7, 6, 2);
insert into tb_personagem (nome, forca, magia, inteligencia, defesa, agilidade, classe_id) values ("Mercer Frey", 5, 6, 5, 2, 6, 3);

select * from tb_personagem where forca > 5;
select * from tb_personagem where defesa between 2 and 5;
select * from tb_personagem where nome like "c%";

select * from tb_personagem inner join tb_classes
on tb_personagem.classe_id = tb_classes.id
where tb_classes.id = 2;
