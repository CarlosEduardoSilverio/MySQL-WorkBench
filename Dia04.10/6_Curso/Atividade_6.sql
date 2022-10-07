create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;
create table tb_categorias(
	id bigint(5) auto_increment,
    nome varchar(40) not null,
    ativo boolean,
primary key(id)
);

create table tb_cursos(
	id bigint(5) auto_increment,
    nome varchar(40) not null,
    duracao varchar(40) not null,
    preco decimal(10,2) not null,
    faculdade varchar(50), 
	id_categoria bigint(10),

primary key(id),
foreign key(id_categoria) references tb_categorias(id)
);

insert into tb_categorias(nome, ativo) values ("Linguas", true);
insert into tb_categorias(nome, ativo) values ("Engenharia", true);
insert into tb_categorias(nome, ativo) values ("Artes", true);
insert into tb_categorias(nome, ativo) values ("Biologo", true);
insert into tb_categorias(nome, ativo) values ("Advocacia", true);

insert into tb_cursos(nome, duracao, preco, faculdade, id_categoria) values ("Inlges", "4 anos", 566.99 , "Faculdade", 1);
insert into tb_cursos(nome, duracao, preco, faculdade, id_categoria) values ("Espanhol", "4 anos", 532.99, "Faculdade", 1);
insert into tb_cursos(nome, duracao, preco, faculdade, id_categoria) values ("Mecanica", "4 anos", 749.90, "Faculdade", 2);
insert into tb_cursos(nome, duracao, preco, faculdade, id_categoria) values ("Robotica", "4 anos", 460.90, "Faculdade", 2);
insert into tb_cursos(nome, duracao, preco, faculdade, id_categoria) values ("Cênicas", "4 anos", 220.90, "Faculdade", 3);
insert into tb_cursos(nome, duracao, preco, faculdade, id_categoria) values ("Moderna", "4 anos", 853.59, "Faculdade", 3);
insert into tb_cursos(nome, duracao, preco, faculdade, id_categoria) values ("Marinho", "4 anos", 860.90, "Faculdade", 4);
insert into tb_cursos(nome, duracao, preco, faculdade, id_categoria) values ("Criminal", "4 anos", 500.19, "Faculdade", 5);

select * from tb_cursos
where preco > 100;

select * from tb_cursos
where preco > 70 and preco < 150;

select * from tb_cursos
where nome like "%c%";

select * from tb_cursos
	inner join tb_categorias on tb_categorias.id = tb_cursos.id_categoria;
    
select tb_cursos.nome, tb_categorias.id from tb_cursos
	inner join tb_categorias on tb_categorias.id = tb_cursos.id_categoria;