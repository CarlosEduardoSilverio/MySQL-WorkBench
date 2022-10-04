/*create database Escola;

use Escola;
create table Boletim(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    nota int(4) not null,
    mae varchar(20) not null,
    pai varchar(50),
    dataNascimento varchar(20) not null,
    materia varchar(20) not null,
    turma int(4), 
    escolanome varchar(50),
    primary key (id)
);
*/
insert into Boletim(nome, nota, mae, pai, dataNascimento, materia, turma, escolanome) values ("Carlos Eduardo", 10, "Maria", "a ", "14/04/2004", "Ingles", 2001, "Ulysses");
insert into Boletim(nome, nota, mae, pai, dataNascimento, materia, turma, escolanome) values ("Lohann", 8, "Rosalia", "a", "31/03/2002", "Português", 2001, "Ulysses");
insert into Boletim(nome, nota, mae, pai, dataNascimento, materia, turma, escolanome) values ("Leandra", 2.8, "Diana", "a", "11/05/2003", "Fisica Nuclear", 2001, "Ulysses");
insert into Boletim(nome, nota, mae, pai, dataNascimento, materia, turma, escolanome) values ("Guilherme", 9.3, "Marines", "a", "07/10/2003", "Comedia", 2001, "Ulysses");
insert into Boletim(nome, nota, mae, pai, dataNascimento, materia, turma, escolanome) values ("PG", 8.2, "Dheny", "a", "15/05/2003", "Engenharia", 2001, "Ulysses");
insert into Boletim(nome, nota, mae, pai, dataNascimento, materia, turma, escolanome) values ("Bike", 3, "Andrea", "a", "05/04/2003", "Rataria", 2001, "Ulysses");
insert into Boletim(nome, nota, mae, pai, dataNascimento, materia, turma, escolanome) values ("Wallace", 10, "Valdenice", "a", "15/2/2000", "Historia", 2001, "Ulysses");
insert into Boletim(nome, nota, mae, pai, dataNascimento, materia, turma, escolanome) values ("Nefasto", 5, "Sandra", "a", "03/09/1999", "Fisica Quantica", 2001, "Ulysses");

select nome, materia, nota from Boletim
where nota > 7;

select nome, materia, nota from Boletim
where nota < 7