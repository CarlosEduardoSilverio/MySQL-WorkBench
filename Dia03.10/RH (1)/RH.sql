create database tb_RH;

use tb_RH;
create table colaboradores(
	id bigint(6) auto_increment,
    nome varchar(30) not null,
    salario decimal(10,2) not null,
    email varchar(40) not null,
    profissao varchar(40) not null,
    idade int(2) not null,
    primary key (id)
);

 insert into colaboradores(nome, salario, email, profissao, idade) values ( "CarlosEduardo", 4500, "cadusilverio444@gmail.com", "programador", 18);
 insert into colaboradores(nome, salario, email, profissao, idade) values ( "Lohann", 1500.32, "lologanplayer@gmail.com", "Transportador", 19);
 insert into colaboradores(nome, salario, email, profissao, idade) values ( "Guilherme", 1600, "K.Olhá@gmail.com", "Caixa", 19);
 insert into colaboradores(nome, salario, email, profissao, idade) values ( "PG", 4500, "40K.é.foda@gmail.com", "Programador", 19);
 insert into colaboradores(nome, salario, email, profissao, idade) values ( "Leandra", 1800, "leandrinha.faz.tudo@gmail.com", "Desempregada", 19);
 insert into colaboradores(nome, salario, email, profissao, idade) values ( "Bike", 200, "FriffasÉVida@gmail.com", "Ifood", 19);
 
 
 select nome, salario from colaboradores 
 where salario > 2000;
 
 select nome, salario from colaboradores 
 where salario < 2000