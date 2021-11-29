create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
tipopizza varchar(255) not null,
ativo boolean not null,
primary key(id)
);

insert into tb_categorias (tipopizza, ativo) values ("Salgado", true);
insert into tb_categorias (tipopizza, ativo) values ("Doce", true);

select * from tb_categorias;
drop table tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
preçocusto decimal not null,
preçovenda decimal not null,
quantvendida int,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categorias (id)
);

select * from tb_pizza;

drop table tb_pizza;

insert into tb_pizza (sabor, preçocusto, preçovenda , quantvendida, categoria_id) values ("Calabresa", 20.00, 29.90 , 130, 1 );
insert into tb_pizza (sabor, preçocusto, preçovenda , quantvendida, categoria_id) values ("Portuguesa", 24.00, 33.90 , 107, 1 );
insert into tb_pizza (sabor, preçocusto, preçovenda , quantvendida, categoria_id) values ("Frango com Catupiry", 23.00, 31.90 , 115, 1 );
insert into tb_pizza (sabor, preçocusto, preçovenda , quantvendida, categoria_id) values ("Marguerita", 25.00, 33.90 , 122, 1 );
insert into tb_pizza (sabor, preçocusto, preçovenda , quantvendida, categoria_id) values ("Mussarela", 22.00, 29.90 , 145, 1 );
insert into tb_pizza (sabor, preçocusto, preçovenda , quantvendida, categoria_id) values ("Brigadeiro", 26.00, 37.90 , 90, 2 );
insert into tb_pizza (sabor, preçocusto, preçovenda , quantvendida, categoria_id) values ("Floresta Negra", 27.00, 39.90 , 83, 2 );
insert into tb_pizza (sabor, preçocusto, preçovenda , quantvendida, categoria_id) values ("Morango com Chocolate", 28.00, 42.90 , 88, 2 );

select * from tb_pizza where preçovenda > 35;
select * from tb_pizza where preçovenda between 32 and 42;
select * from tb_pizza where sabor like "c%";

select * from tb_pizza inner join tb_categorias
on tb_pizza.categoria_id =  tb_categorias.id;

select * from tb_pizza inner join tb_categorias
on tb_pizza.categoria_id = tb_categorias.id
where tb_categorias.id=1;
