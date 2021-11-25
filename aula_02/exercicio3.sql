create database db_escola;
use db_escola;

create table tb_estudantes(
id bigint auto_increment ,
nome varchar(255) not null,
serie varchar(255) not null,
idade int,
nota decimal not null,
notaRedação decimal not null,
primary key(id)
);

select * from tb_estudantes;

insert into tb_estudantes (nome, serie, idade, nota, notaRedação) values("Fernando Sousa", "1 ano", 15, 7.5, 650);
insert into tb_estudantes (nome, serie, idade, nota, notaRedação) values("Gabriela Martins", "1 ano", 16, 7.0, 750);
insert into tb_estudantes (nome, serie, idade, nota, notaRedação) values("Henrique Pereira", "2 ano", 16, 3.5, 470);
insert into tb_estudantes (nome, serie, idade, nota, notaRedação) values("Isabella Gonçalves", "2 ano", 16, 4.0, 520);
insert into tb_estudantes (nome, serie, idade, nota, notaRedação) values("Jackson Mota", "2 ano", 16, 2.5, 150);
insert into tb_estudantes (nome, serie, idade, nota, notaRedação) values("Kamila Silva", "3 ano", 17, 8.0, 900);
insert into tb_estudantes (nome, serie, idade, nota, notaRedação) values("Laura Santos", "3 ano", 17, 6.5, 880);
insert into tb_estudantes (nome, serie, idade, nota, notaRedação) values("Osvaldo Castro", "3 ano", 18, 5.0, 580);

select * from tb_estudantes where nota < 7;
select * from tb_estudantes where nota > 7;
select * from tb_estudantes where notaRedação >500;

update tb_estudantes set nota = 9 where id = 2 ;