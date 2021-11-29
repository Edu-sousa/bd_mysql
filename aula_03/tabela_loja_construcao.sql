create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categorias(
id bigint auto_increment,
departamento varchar(255),
primary key(id)
);
select * from tb_categorias;
drop table tb_categorias;

insert into tb_categorias (departamento) values ("ferramentas");
insert into tb_categorias (departamento) values ("materiais eletricos");
insert into tb_categorias (departamento) values ("materiais hidraulicos");

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preço decimal not null,
categ_id bigint,
estoque boolean,
primary key(id),
foreign key (categ_id) references tb_categorias(id)
);

select * from tb_produtos;
drop table tb_produtos;

insert into tb_produtos (nome, preço, categ_id, estoque) values ("furadeira", 300.00, 1,true);
insert into tb_produtos (nome, preço, categ_id, estoque) values ("trena a laser", 270.00, 1,true);
insert into tb_produtos (nome, preço, categ_id, estoque) values ("serra circular", 1360.00, 1,false);
insert into tb_produtos (nome, preço, categ_id, estoque) values ("lampada led", 39.90, 2,true);
insert into tb_produtos (nome, preço, categ_id, estoque) values ("tomada 2P", 5.49, 2,true);
insert into tb_produtos (nome, preço, categ_id, estoque) values ("torneira", 149.90, 3,false);
insert into tb_produtos (nome, preço, categ_id, estoque) values ("tubo 6m", 187.00, 3,true);

select * from tb_produtos where preço > 50;
select * from tb_produtos where preço between 50 and 200;
select * from tb_produtos where nome like "t%";

select * from tb_produtos inner join tb_categorias
on tb_produtos.categ_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias
on tb_produtos.categ_id = tb_categorias.id
where tb_categorias.id = 2;

