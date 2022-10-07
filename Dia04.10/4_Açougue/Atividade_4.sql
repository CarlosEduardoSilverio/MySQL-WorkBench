create database db_cidade_das_carnes;

use db_cidade_das_carnes;
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
    fazenda boolean, 
	id_categoria bigint(10),

primary key(id),
foreign key(id_categoria) references tb_categorias(id)
);

insert into tb_categorias(nome, ativo) values ("Bovina", true);
insert into tb_categorias(nome, ativo) values ("Suina", true);
insert into tb_categorias(nome, ativo) values ("Frango ", true);
insert into tb_categorias(nome, ativo) values ("Peixe", true);
insert into tb_categorias(nome, ativo) values ("Cordeiro", true);

insert into tb_produtos(nome, peso, preco, fazenda, id_categoria) values ("Almôndega Artesanal", "500 gramas", 23.90, true, 1);
insert into tb_produtos(nome, peso, preco, fazenda, id_categoria) values ("Miolo De Alcatra", "08 bifes/kg", 59.90, true, 1);
insert into tb_produtos(nome, peso, preco, fazenda, id_categoria) values ("Bacon Fatiado Tropeira", "200 gramas", 12.90, true, 2);
insert into tb_produtos(nome, peso, preco, fazenda, id_categoria) values ("Linguiça Artesanal", "500 gramas", 17.90, true, 2);
insert into tb_produtos(nome, peso, preco, fazenda, id_categoria) values ("Galeto Desossado E Temperado", "470 gramas", 19.90, true, 3);
insert into tb_produtos(nome, peso, preco, fazenda, id_categoria) values ("Coxa E Sobrecoxa Desossada E Recheada", "01 kg", 28.90, true, 3);
insert into tb_produtos(nome, peso, preco, fazenda, id_categoria) values ("Pernil De Cordeiro ARG", "2,45kg", 166.90, true, 4);
insert into tb_produtos(nome, peso, preco, fazenda, id_categoria) values ("Filé De Salmão Chileno Premium", "600 gramas", 62.90, true, 5);

select * from tb_produtos
where preco > 50;

select * from tb_produtos
where preco > 50 and preco < 150;

select * from tb_produtos
where nome like "%c%";

select * from tb_produtos
	inner join tb_categorias on tb_categorias.id = tb_produtos.id_categoria;
    
select tb_produtos.nome, tb_categorias.id from tb_produtos
	inner join tb_categorias on tb_categorias.id = tb_produtos.id_categoria;