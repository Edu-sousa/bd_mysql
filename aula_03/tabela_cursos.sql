create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categorias(
id bigint auto_increment,
areas varchar (255),
primary key(id)
);
select * from tb_categorias;
drop table tb_categorias;


insert into tb_categorias (areas) values ("Programação");
insert into tb_categorias (areas) values ("Administração");
insert into tb_categorias (areas) values ("Marketing");


create table tb_cursos(
id bigint auto_increment,
nome varchar(255) not null,
duracao varchar (255) not null,
preço decimal,
categ_id bigint,
primary key (id),
foreign key (categ_id) references tb_categorias(id)
);
select * from tb_cursos;
drop table tb_cursos;

insert into tb_cursos (nome, duracao, preço, categ_id) values ("Desenvolvimento Back-End", "4 semanas", 200.00, 1);
insert into tb_cursos (nome, duracao, preço, categ_id) values ("Desenvolvimento Front-End", "4 semanas", 150.00, 1);
insert into tb_cursos (nome, duracao, preço, categ_id) values ("Desenvolvimento de Banco de Dados", "4 semanas", 170.00,  1);
insert into tb_cursos (nome, duracao, preço, categ_id) values ("Ferramentas de Administração", "2 semanas", 90.00, 2);
insert into tb_cursos (nome, duracao, preço, categ_id) values ("Administração de empresas", "5 semanas", 130.00, 2);
insert into tb_cursos (nome, duracao, preço, categ_id) values ("Marketing Digital", "6 semanas", 90.00, 3);
insert into tb_cursos (nome, duracao, preço, categ_id) values ("Marketing Institucional", "5 semanas",110.00, 3);

select * from tb_cursos where preço > 120;
select * from tb_cursos where preço between 100 and 130;
select * from tb_cursos where nome like "d%";

select * from tb_cursos inner join tb_categorias
on tb_cursos.categ_id = tb_categorias.id;

select * from tb_cursos inner join tb_categorias
on tb_cursos.categ_id = tb_categorias.id
where tb_categorias.id = 1;











