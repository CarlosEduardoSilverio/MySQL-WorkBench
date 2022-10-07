/*create database db_generation_game_online;

use db_generation_game_online;
create table tb_classes(
	id bigint(10) auto_increment,
    assassino int(2),
    mago int(2),
    anao int(2),
    
primary key (id)
);

create table tb_personagens(
	id bigint(5) auto_increment,
    nick varchar(20) not null,
    arma varchar(20) not null,
    habilidade varchar(20) not null,
    nivel int(3) not null,
    poder bigint(5) not null,
    id_classes bigint,
    
primary key (id),
foreign key (id_classes) references tb_classes(id)
);
*/
insert into tb_personagens(nick, arma, habilidade, nivel, poder, id_classes) values("Genivaldo", "Machado", "Derruba Arvore", 34, 3210, 4); 
/*insert into tb_personagens(nick, arma, habilidade, nivel, poder) values("Wumberto", "Bastao Magico", "Bola de Fogo", 55, 6000);
insert into tb_personagens(nick, arma, habilidade, nivel, poder) values("Valderclei", "Martelo", "Pelo peso do marcelo", 73, 5899);
insert into tb_personagens(nick, arma, habilidade, nivel, poder) values("Marrone", "Faca", "Corte Profundo", 5, 367);
insert into tb_personagens(nick, arma, habilidade, nivel, poder) values("Fertruclei", "Arco", "Flecha Perfurante", 21, 833);
insert into tb_personagens(nick, arma, habilidade, nivel, poder) values("Gogonzola", "Arco", "Chuva de Flechas", 15, 1599);
insert into tb_personagens(nick, arma, habilidade, nivel, poder) values("Kezikur", "Punhos", "Soco Forte", 22, 1700);
insert into tb_personagens(nick, arma, habilidade, nivel, poder) values("Tamirulos", "Besta", "Flecha Flamejante", 4, 1100);
*/
/*insert into tb_classes(assassino, mago, anao) values (10, 10, 10);
insert into tb_classes(assassino, mago, anao) values (10, 10, 9);
insert into tb_classes(assassino, mago, anao) values (10, 9, 9);
insert into tb_classes(assassino, mago, anao) values (10, 9, 8);
insert into tb_classes(assassino, mago, anao) values (9, 9, 8);
insert into tb_classes(assassino, mago, anao) values (8, 9, 8);
insert into tb_classes(assassino, mago, anao) values (7, 9, 8);
insert into tb_classes(assassino, mago, anao) values (7, 9, 7);
*/

select * from tb_classes;

select * from tb_personagens
where poder > 2000;

select tb_personagens.nick, tb_personagens.arma, tb_personagens.habilidade, tb_personagens.nivel, tb_personagens.poder from tb_personagens
where poder < 2000 and poder > 1000;

select nick from tb_personagens where nick like "%c%";

select * from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.id_classes;