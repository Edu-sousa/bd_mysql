create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categorias(
id bigint auto_increment,
categoria varchar(255) not null,
unidade int,
primary key(id)
);

insert into tb_categorias (categoria) values ("Remedios");
insert into tb_categorias (categoria) values ("Cosmeticos");
insert into tb_categorias (categoria) values ("Higiene Pessoal");

select * from tb_categorias;


create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preço decimal(4,2),
quantidade int,
codigo int,
desconto varchar (255) not null,
categ_id bigint,
primary key (id),
foreign key (categ_id) references tb_categorias(id)
);

select* from tb_produto;
drop table tb_produto;



insert into tb_produto (nome, preço, quantidade, codigo, desconto, categ_id) values("Dorflex", 3.50, 50, 1000 , "0%", 1);
insert into tb_produto (nome, preço, quantidade, codigo, desconto, categ_id) values("Amoxilina", 5.70, 70, 1001 , "5%",1);
insert into tb_produto (nome, preço, quantidade, codigo, desconto, categ_id) values("Nelsaldina", 22.40, 65, 1002 , "5%",1);
insert into tb_produto (nome, preço, quantidade, codigo, desconto, categ_id) values("Esmalte", 4.90, 35, 1003 , "0%",2);
insert into tb_produto (nome, preço, quantidade, codigo, desconto, categ_id) values("Batom", 6.90, 40, 1004 , "0%",2);
insert into tb_produto (nome, preço, quantidade, codigo, desconto, categ_id) values("Shampoo", 21.90, 15, 1005 , "5%",3);
insert into tb_produto (nome, preço, quantidade, codigo, desconto, categ_id) values("Sabonete", 6.99, 50, 1006 , "0%",3);

select * from tb_produto where preço > 7;
select * from tb_produto where preço between 4 and 6;
select * from tb_produto where nome like "B%";

select * from tb_produto inner join tb_categorias
on tb_produto.categ_id = tb_categorias.id;

select * from tb_produto inner join tb_categorias
on tb_produto.categ_id = tb_categorias.id
where tb_categorias.id = 3;


