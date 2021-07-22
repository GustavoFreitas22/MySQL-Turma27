create table tb_categoria(
	id bigint auto_increment,
    tarja varchar(20),
    tipo varchar(20),
    
    primary key(id)
);

create table tb_produto(
	id bigint auto_increment,
    nome varchar(20),
    preco decimal(10,2),
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
    
);

insert into tb_categoria(id, tarja, tipo) values (5, "tarja Azul", "Medicamento");
insert into tb_produto(nome, preco, categoria_id) values ("Remedio5", 260.00, 4);

select * from tb_produto where preco>50;
select * from tb_produto where preco>3 and preco<60;
select * from tb_produto where nome like "%Re%";

select tb_produto.nome, tb_produto.preco, tb_categoria.tipo from tb_produto
	inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id
		where tb_categoria.tipo like "%pessoal%"