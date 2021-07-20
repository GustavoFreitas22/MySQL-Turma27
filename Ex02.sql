insert into produto(nome, preco, marca, qtd) values ("Tesoura", 10.99, "Trident", 5);
insert into produto(nome, preco, marca, qtd) values ("Papel", 10.99, "Stado", 5);
insert into produto(nome, preco, marca, qtd) values ("Lapisera", 1900, "Carrisimo", 5);
insert into produto(nome, preco, marca, qtd) values ("Lapis", 7.99, "FaberCastle", 5);
insert into produto(nome, preco, marca, qtd) values ("Tesoura", 1000.99, "Prada", 5);
insert into produto(nome, preco, marca, qtd) values ("Post-it", 500.99, "Gucci", 5);
insert into produto(nome, preco, marca, qtd) values ("Caneta", 10.99, "BIC", 5);
insert into produto(nome, preco, marca, qtd) values ("Marcador", 0.99, "page", 5);

select * from produto where preco>500;
select * from produto where preco<500;

update produto set nome = "Caderninho" where id = 6;