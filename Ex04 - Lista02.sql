create table tb_categoria(
	id bigint(20) auto_increment not null,
    tipo varchar(20), 
    premium boolean,
    
    primary key(id)
);

create table tb_produto(
	id bigint(20) auto_increment,
    nome varchar(20),
    preco decimal(10,2),
    categoria_id bigint,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);
INSERT INTO tb_categoria (tipo,premium,id) VALUES ("purus",True,1);
insert into tb_produto(nome, preco, categoria_id) values("Frango", 10.20, 1);
select * from tb_produtos where preco > 50;
select * from tb_produtos where preco > 3 and 60;
select * from tb_produtos where nome like "%c%";

select tb_produtos.nome, tb_produtos.preco from tb_produtos
	inner join tb_categoria on tb_produtos.categoria_id = tb_categoria.id
		where tb_categoria.categoria = 5;


