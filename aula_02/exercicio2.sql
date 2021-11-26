create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
preço decimal not null,
quantidade int,
categoria varchar(255) not null,
desconto int,
primary key (id)
);

select * from tb_produtos;

insert into tb_produtos(nome, preço, quantidade, categoria, desconto) values ("Camiseta", 39.99, 15, "Roupas", 10);
insert into tb_produtos(nome, preço, quantidade, categoria, desconto) values ("Calça", 79.99, 8, "Roupas", 10);
insert into tb_produtos(nome, preço, quantidade, categoria, desconto) values ("Blusa", 109.99, 15, "Roupas", 12);
insert into tb_produtos(nome, preço, quantidade, categoria, desconto) values ("Celular", 1.800, 10, "Eletronicos", 25);
insert into tb_produtos(nome, preço, quantidade, categoria, desconto) values ("Tablet", 999.00, 20, "Eletronicos", 25);
insert into tb_produtos(nome, preço, quantidade, categoria, desconto) values ("Computador", 3.500, 7, "Eletronicos", 25);
insert into tb_produtos(nome, preço, quantidade, categoria, desconto) values ("Harry Potter", 42.99, 30, "Livros", 30);
insert into tb_produtos(nome, preço, quantidade, categoria, desconto) values ("Percy Jackson", 34.90, 25, "Livros", 30);

select * from tb_produtos where preço < 500 ;
select * from tb_produtos where preço > 500 ;

update tb_produtos set preço = 3.200 where id = 6;

delete from tb_produtos where id = 4;


select nome, CONCAT('R$ ',FORMAT(preco, 2,'pt_BR')) as preço from tb_produtos;