create database escola;
use escola;

create table alunos(
	id int NOT NULL AUTO_INCREMENT,
	nome_aluno varchar(50),
    telefone_aluno int,
    periodo_aluno varchar(10),
    turma_aluno enum ('1','2','3','4','5','6','7','8','9'),
    matricula_aluno smallint,
    notaFinal decimal(2,0),
	primary key(id)
)default charset = utf8mb4;

insert into alunos
(nome_aluno, telefone_aluno, periodo_aluno, turma_aluno, matricula_aluno, notaFinal)
values
('Lucas Nery', 999999, 'manhã' , '5', 9433, 7.00),
('Ana Silva', 999999, 'tarde' , '7', 7456, 9.00),
('Paulo Souza', 999999, 'manhã' , '6', 4758, 5.00),
('Felipe Santos', 999999, 'noite' , '3', 1254, 8.00),
('Adam Lambert', 999999, 'manhã' , '2', 1125, 9.00),
('Gabriel Saporta', 999999, 'noite' , '2', 5426, 6.00),
('Patrick Stump', 999999, 'tarde' , '8', 9420, 10.00),
('Pete Wentz', 999999, 'noite' , '1', 8452, 6.00);

select  * from alunos where notaFinal > 7.00;
select * from alunos where notaFinal < 7.00;

update alunos set nome_aluno = "Lucas Nery Gomes"
where id = 1;

select * from alunos;