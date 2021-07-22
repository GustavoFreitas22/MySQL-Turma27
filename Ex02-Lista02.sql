create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(20),
    borda varchar(20),
    
    primary key(id)
);


create table tb_pizza(
	id bigint auto_increment,
    sabor varchar(20),
    preco decimal(10,2),
    tamanho int,
    categoria_id bigint,
    
    primary key(id),
    
    foreign key(categoria_id) references tb_categoria(id)
    
);

insert into tb_categoria(id, tipo, borda) values (4, "Doce", "Normal");
insert into tb_pizza(sabor, preco, tamanho, categoria_id) values ("4 Queijos", 68.00, 8, 3);

select * from tb_pizza where preco>45.00;
select * from tb_pizza where preco> 29.00 and preco<60.00;

select * from tb_pizza where sabor like "%C%";

select tb_pizza.sabor, tb_pizza.preco, tb_categoria.tipo from tb_pizza
	inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id
		where tb_categoria.tipo like "%Doce%"

