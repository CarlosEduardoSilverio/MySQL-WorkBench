create database db_farmacia_bem_estar;

use  db_farmacia_bem_estar;
create table tb_categorias(
	id bigint(5) auto_increment,
    nome varchar(50) not null,
    ativo boolean,
    
primary key(id)
);

create table tb_produtos(
	id bigint(5) auto_increment,
    nome varchar(50) not null,
    preco decimal(10,2) not null,
    horarioRemedio varchar(50) not null,
    quantidadeRemedio varchar(50) not null,
    id_categorias bigint,

primary key(id),
foreign key(id_categorias) references tb_categorias(id)
);

insert into tb_categorias(nome, ativo) values ("Remédios para dores de cabeça", true);
insert into tb_categorias(nome, ativo) values ("Remédios para dores oculares", true);
insert into tb_categorias(nome, ativo) values ("Remédios para dores no estômago", true);
insert into tb_categorias(nome, ativo) values ("Remédios para dores musculares", true);
insert into tb_categorias(nome, ativo) values ("Remédios para dores de garganta", true);

insert into tb_produtos(nome, preco, horarioRemedio, quantidadeRemedio, id_categorias) values ("Dipirona", 27.91, "6 em 6 horas", "20 a 40 gotas para maiores de 15 anos.", 1);
insert into tb_produtos(nome, preco, horarioRemedio, quantidadeRemedio, id_categorias) values ("Neosaldina", 26.49, "6 em 6 horas", "1 comprimido", 1);
insert into tb_produtos(nome, preco, horarioRemedio, quantidadeRemedio, id_categorias) values ("Dexametasona", 11.77, "6 em 6 horas", "Adultos: 0,5 a 24 mg", 5);
insert into tb_produtos(nome, preco, horarioRemedio, quantidadeRemedio, id_categorias) values ("Diclofenaco Dietilamônio", 10.59, "6 em 6 horas", "20 a 40 gotas para maiores de 15 anos.", 5);
insert into tb_produtos(nome, preco, horarioRemedio, quantidadeRemedio, id_categorias) values ("Canela de Velho", 8.80, "2 ou 3 vezes ao dia", "2 ou 3 vezes ao dia", 4);
insert into tb_produtos(nome, preco, horarioRemedio, quantidadeRemedio, id_categorias) values ("Advil 12 Horas", 17.76, "Intervalo mínimo de 4-6 horas", "3 cápsulas (1.200 mg)", 4);
insert into tb_produtos(nome, preco, horarioRemedio, quantidadeRemedio, id_categorias) values ("Esomeprazol", 63.39, "Pelo menos 1 h antes das refeições.", "20 a 40 mg", 3);
insert into tb_produtos(nome, preco, horarioRemedio, quantidadeRemedio, id_categorias) values ("Luteína", 63.90, "Após as refeições maiores como almoço e jantar.", "15 mg", 2);

select * from tb_produtos
where preco > 50;

select * from tb_produtos 
where preco > 5 and preco < 60;

select * from tb_produtos
where nome like "%c%";

select * from tb_produtos
	inner join tb_categorias on tb_categorias.id = tb_produtos.id_categorias;

select tb_produtos.nome, tb_categorias.id from tb_produtos
	inner join tb_categorias on tb_categorias.id = tb_produtos.id_categorias;