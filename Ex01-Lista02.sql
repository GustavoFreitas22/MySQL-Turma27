create table tb_classe(
	id bigint(20) auto_increment,
    nome varchar(20) not null,
    forca int,
    velocidade int, 
    mana int, 
    
    primary key(id)
);

create table tb_personagem(
	id bigint(20) auto_increment,
    nome varchar(20),
    equipamentos varchar(20),
    nivel int,
    tipo_classe bigint(20),
    
    primary key(id),
    
    foreign key (tipo_classe) references tb_classe(id) 
);

insert into tb_classe(id, nome, forca, velocidade, mana) values (5,"Bardo",15 ,10, 60);
insert into tb_personagem(nome, equipamentos, nivel, tipo_classe) values ("Rodrigo", "Flauta", 30, 5);

select * from tb_personagem where nivel > 20;
select * from tb_personagem where tipo_classe = 1;
select * from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_personagem.nivel, tb_classe.forca, tb_classe.velocidade, tb_classe.mana from tb_personagem
	inner join tb_classe on tb_classe.id = tb_personagem.tipo_classe where tb_classe.id = 5;

