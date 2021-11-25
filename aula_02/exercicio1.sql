create database db_rh;

use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
salario int,
primary key (id)
);

insert into tb_funcionarios (nome, salario) values("Alberto Sousa", 1500);
insert into tb_funcionarios (nome, salario) values("Beatriz Martins", 1800);
insert into tb_funcionarios (nome, salario) values("Cezar Pereira", 2300);
insert into tb_funcionarios (nome, salario) values("Daniela Gonçalves", 2700);
insert into tb_funcionarios (nome, salario) values("Ester Mota", 3000);

select * from tb_funcionarios;

select * from tb_funcionarios where salario < 2000;
select * from tb_funcionarios where salario > 2000;

update tb_funcionarios set salario = 4500 where id = 7;

delete from tb_funcionarios where id = 2;
delete from tb_funcionarios where id = 8;