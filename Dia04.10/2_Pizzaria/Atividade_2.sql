/*create database db_pizzaria_legal;

use db_pizzaria_legal;
create table tb_categorias(
	id bigint(5) auto_increment,
    tamanho varchar(30) not null,
    ativo boolean,
    
primary key(id)
);
create table tb_pizzas(
	id bigint(5) auto_increment,
    sabor varchar(20) not null,
    refri varchar(20) not null,
    adicionais varchar(20) not null,
    quantidadePizza int(2) not null,
    preco decimal(10,2) ,
    id_categorias bigint,
    
primary key(id),
foreign key(id_categorias) references tb_categorias(id)
);

insert into tb_categorias(tamanho, ativo) values ("Broto", true);
insert into tb_categorias(tamanho, ativo) values ("Pequena", true);
insert into tb_categorias(tamanho, ativo) values ("Media", true);
insert into tb_categorias(tamanho, ativo) values ("Grande", true);
insert into tb_categorias(tamanho, ativo) values ("Familia", true);

insert into tb_pizzas(sabor, refri, adicionais, quantidadePizza, preco, id_categorias) values ("Calabresa", "Coca-Cola", "Azeitona", 2, 10.60, 1);
insert into tb_pizzas(sabor, refri, adicionais, quantidadePizza, preco, id_categorias) values ("Portuguesa", "Fanta Laranja", "Orégano", 1, 54, 5);
insert into tb_pizzas(sabor, refri, adicionais, quantidadePizza, preco, id_categorias) values ("Frango c/ Catupiry", "Guarana Antartica", "Molho de Tomate", 2, 25, 2);
insert into tb_pizzas(sabor, refri, adicionais, quantidadePizza, preco, id_categorias) values ("Muçarela", "Sukita", "Tomate Fresco", 3, 10, 1);
insert into tb_pizzas(sabor, refri, adicionais, quantidadePizza, preco, id_categorias) values ("Marguerita", "Fanta Uva", "Orégano Salpicado", 6, 31, 3);
insert into tb_pizzas(sabor, refri, adicionais, quantidadePizza, preco, id_categorias) values ("Alho Negro", "Sprite", "Tomate-Cereja", 1, 48, 5);
insert into tb_pizzas(sabor, refri, adicionais, quantidadePizza, preco, id_categorias) values ("Scamorza", "Convenção", "Folhas de Manjericão", 1, 48, 5);
insert into tb_pizzas(sabor, refri, adicionais, quantidadePizza, preco, id_categorias) values ("Napolitana", "Pepsi", "Alho", 3, 22, 2);
*/
select * from tb_pizzas
where preco > 45;

select * from tb_pizzas
where preco > 50 and preco < 100;

select sabor from tb_pizzas where sabor like "%m%";

select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.id_categorias;

select tb_pizzas.sabor, tb_categorias.id from tb_pizzas
	inner join tb_categorias on tb_categorias.id = tb_pizzas.id_categorias;
