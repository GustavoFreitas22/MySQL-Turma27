insert into tb_estudantes(nome, nota, idade, turma) values ("Gabriela", 6, 15, "3-B");
insert into tb_estudantes(nome, nota, idade, turma) values ("Jão", 5, 15, "3-A");
insert into tb_estudantes(nome, nota, idade, turma) values ("Gustavo", 10, 20, "3-B");
insert into tb_estudantes(nome, nota, idade, turma) values ("Bianca", 8, 30, "5-B");
insert into tb_estudantes(nome, nota, idade, turma) values ("Matheus", 6, 18, "4-F");
insert into tb_estudantes(nome, nota, idade, turma) values ("Rodrigo", 4, 51, "7-B");
insert into tb_estudantes(nome, nota, idade, turma) values ("Ana", 6, 15, "5-A");
insert into tb_estudantes(nome, nota, idade, turma) values ("Larissa", 8, 16, "8-B");

select * from tb_estudantes where nota>7;
select * from tb_estudantes where nota<7;

update tb_estudantes set nota = 9 where id == 7;