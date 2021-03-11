CREATE DATABASE escola;
USE escola;

CREATE TABLE alunos(
	id int NOT NULL AUTO_INCREMENT,
	nome_aluno VARCHAR(50),
    telefone_aluno INT,
    periodo_aluno VARCHAR(10),
    turma_aluno ENUM ('1','2','3','4','5','6','7','8','9'),
    matricula_aluno SMALLINT,
    notaFinal DECIMAL(2,0),
	PRIMARY KEY(id)
)DEFAULT CHARSET = utf8mb4;

INSERT INTO alunos
(nome_aluno, telefone_aluno, periodo_aluno, turma_aluno, matricula_aluno, notaFinal)
VALUES
('Lucas Nery', 999999, 'manhã' , '5', 9433, 7.00),
('Ana Silva', 999999, 'tarde' , '7', 7456, 9.00),
('Paulo Souza', 999999, 'manhã' , '6', 4758, 5.00),
('Felipe Santos', 999999, 'noite' , '3', 1254, 8.00),
('Adam Lambert', 999999, 'manhã' , '2', 1125, 9.00),
('Gabriel Saporta', 999999, 'noite' , '2', 5426, 6.00),
('Patrick Stump', 999999, 'tarde' , '8', 9420, 10.00),
('Pete Wentz', 999999, 'noite' , '1', 8452, 6.00);

SELECT  * FROM alunos WHERE notaFinal > 7.00;
SELECT * FROM alunos WHERE notaFinal < 7.00;

UPDATE alunos SET nome_aluno = "Lucas Nery Gomes"
WHERE id = 1;

SELECT * FROM alunos;