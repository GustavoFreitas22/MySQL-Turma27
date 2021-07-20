insert into tb_funcionarios(nome, salario, cargo, setor) values ("Gabriela", 6000, "Diretora", "RH");
insert into tb_funcionarios(nome, salario, cargo, setor) values ("Rodrigo", 2500, "Auxiliar", "Manutencao");
insert into tb_funcionarios(nome, salario, cargo, setor) values ("Marcos", 1900, "Atendente", "Atendiemento");
insert into tb_funcionarios(nome, salario, cargo, setor) values ("Maria", 3000, "Gerente", "Cobranca");
insert into tb_funcionarios(nome, salario, cargo, setor) values ("Carlos", 1200, "Auxiliar", "Faturamento");

select * from tb_funcionarios where salario>2000;
select * from tb_funcionarios where salario<2000;

update tb_funcionarios set setor = "Desenvolvimento" where id = 3;