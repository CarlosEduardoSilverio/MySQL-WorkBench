create database db_construindo_vidas;

use db_construindo_vidas;
create table tb_categorias(
	id bigint(5) auto_increment,
    nome varchar(40) not null,
    ativo boolean,
primary key(id)
);

create table tb_produtos(
	id bigint(5) auto_increment,
    nome varchar(40) not null,
    peso varchar(40) not null,
    preco decimal(10,2) not null,
    destribuidora varchar(50), 
	id_categoria bigint(10),

primary key(id),
foreign key(id_categoria) references tb_categorias(id)
);

insert into tb_categorias(nome, ativo) values ("Areia", true);
insert into tb_categorias(nome, ativo) values ("Argila Expandida e Vermiculita", true);
insert into tb_categorias(nome, ativo) values ("Cal", true);
insert into tb_categorias(nome, ativo) values ("Cimentos", true);
insert into tb_categorias(nome, ativo) values ("Gessos", true);

insert into tb_produtos(nome, peso, preco, destribuidora, id_categoria) values ("Areia Média", "20kg", 5.99 , "Leroy Merlin", 1);
insert into tb_produtos(nome, peso, preco, destribuidora, id_categoria) values ("Areola para Emboço", "20kg", 5.99, "Leroy Merlin", 1);
insert into tb_produtos(nome, peso, preco, destribuidora, id_categoria) values ("Vermiculita Expandida", "12Kg", 74.90, "Leroy Merlin", 2);
insert into tb_produtos(nome, peso, preco, destribuidora, id_categoria) values ("Argila Expandida", "20kg", 46.90, "Leroy Merlin", 2);
insert into tb_produtos(nome, peso, preco, destribuidora, id_categoria) values ("Cal Hidratada", "20Kg", 22.90, "Leroy Merlin", 3);
insert into tb_produtos(nome, peso, preco, destribuidora, id_categoria) values ("Massalit", "20kg", 8.59, "Leroy Merlin", 3);
insert into tb_produtos(nome, peso, preco, destribuidora, id_categoria) values ("Cimento CPB-40 Branco Estrutural ", "15kg", 86.90, "Leroy Merlin", 4);
insert into tb_produtos(nome, peso, preco, destribuidora, id_categoria) values ("Gesso Cola", "1Kg", 5.19, "Leroy Merlin", 5);

select * from tb_produtos
where preco > 100;

select * from tb_produtos
where preco > 70 and preco < 150;

select * from tb_produtos
where nome like "%c%";

select * from tb_produtos
	inner join tb_categorias on tb_categorias.id = tb_produtos.id_categoria;
    
select tb_produtos.nome, tb_categorias.id from tb_produtos
	inner join tb_categorias on tb_categorias.id = tb_produtos.id_categoria;