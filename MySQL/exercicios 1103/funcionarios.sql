insert into funcionarios 
(nome, nascimento, cargo, nivel, salario)
values
('Felipe', '2000-11-02', 'suporte técnico','estagiario', '1900');

select * from funcionarios where salario > 2000;
select * from funcionarios where salario < 2000;

update funcionarios set salario = 3400, cargo = 'Desenvolvedor front end',
nivel = 'junior'
where id =  7;

select * from funcionarios;