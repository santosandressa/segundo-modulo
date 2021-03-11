INSERT INTO funcionarios 
(nome, nascimento, cargo, nivel, salario)
VALUES
('Felipe', '2000-11-02', 'suporte técnico','estagiario', '1900');

SELECT * FROM funcionarios WHERE salario > 2000;
SELECT * FROM funcionarios WHERE salario < 2000;

UPDATE funcionarios SET salario = 3400, cargo = 'Desenvolvedor front end',
nivel = 'junior'
WHERE id =  7;

SELECT * FROM funcionarios;