create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
ativo boolean not null,
primary key (id)
);

drop table tb_categorias;
select * from tb_categorias;

insert into tb_categorias (tipo, ativo) values ("frutas frescas", true);
insert into tb_categorias (tipo, ativo) values ("frutas secas", true);
insert into tb_categorias (tipo, ativo) values ("legumes", true);
insert into tb_categorias (tipo, ativo) values ("verduras", true);

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
preço decimal(4,2),
peso varchar(255) not null,
quant int,
categ_id bigint,
primary key (id),
foreign key (categ_id) references tb_categorias(id)
);

select * from tb_produtos;
drop table tb_produtos;


insert into tb_produtos (nome, preço, peso, quant, categ_id) values ("Laranja", 9.00, "1kg", 10, 1);
insert into tb_produtos (nome, preço, peso, quant, categ_id) values ("Morango", 15.90, "100g", 25, 1);
insert into tb_produtos (nome, preço, peso, quant, categ_id) values ("Banana", 5.00, "1kg", 12, 2);
insert into tb_produtos (nome, preço, peso, quant, categ_id) values ("Maça", 7.90, "1kg", 7, 2);
insert into tb_produtos (nome, preço, peso, quant, categ_id) values ("Cenoura", 9.00, "1kg", 4, 3);
insert into tb_produtos (nome, preço, peso, quant, categ_id) values ("Tomate", 12.90, "1kg", 7, 3);
insert into tb_produtos (nome, preço, peso, quant, categ_id) values ("Alface", 3.00, "100g", 1, 4);
insert into tb_produtos (nome, preço, peso, quant, categ_id) values ("Couve", 5.90, "100g", 2, 4);

select * from tb_produtos where preço > 8.00;
select * from tb_produtos where preço between 3 and 7;
select * from tb_produtos where nome like "c%" ;

select * from tb_produtos inner join tb_categorias
on tb_produtos.categ_id = tb_categorias.id; 

select * from tb_produtos inner join tb_categorias
on tb_produtos.categ_id = tb_categorias.id
where tb_categorias.id = 3 ;