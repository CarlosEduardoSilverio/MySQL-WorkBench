/*create database E_Commerce;

use E_Commerce;
create table Produtos(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    preco decimal(10,2) not null,
    marca varchar(20) not null,
    modelo varchar(50) not null,
    cor varchar(20) not null,
    primary key (id)
);
*/
insert into Produtos(nome, preco, marca, modelo, cor) values ("Celular", 200, "Apple", "Iphone 13", "Preto");
insert into Produtos(nome, preco, marca, modelo, cor) values ("Celular", 499, "Samsung", "S22", "Preto");
insert into Produtos(nome, preco, marca, modelo, cor) values ("Celular", 300, "Xiomi", "Redmi note 9", "Preto");
insert into Produtos(nome, preco, marca, modelo, cor) values ("Geladeira", 6459, "Panasonic", "‎NR-BB71GVFBB", "Preto");
insert into Produtos(nome, preco, marca, modelo, cor) values ("Ar-Condicionado", 1999, "LG", "Split LG Dual Inverter Voice 9000 BTUs Frio 220V", "Branco");
insert into Produtos(nome, preco, marca, modelo, cor) values ("Micro-Ondas", 689, "Panasonic", "NN-ST27LWRUN", "Branco");
insert into Produtos(nome, preco, marca, modelo, cor) values ("Liquidificador", 169.99, "‎Mondial", "L-1200 BI", "Preto/Inox");
insert into Produtos(nome, preco, marca, modelo, cor) values ("Projetor", 8819.10, "EPSON", "Epiqvision EF-12", "Preto");

select nome, preco from Produtos
where preco > 500;

select nome, preco from Produtos
where preco < 500