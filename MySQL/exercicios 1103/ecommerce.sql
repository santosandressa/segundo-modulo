use ecommerce;

create table estoque ( 
	id int NOT NULL AUTO_INCREMENT,
	nome_produto varchar(50) NOT NULL,
    codigo_produto smallint,
    preco_produto decimal(8,2),
    peso_produto decimal(6,2),
    fabricante_produto varchar(40),
    primary key(id)
)default charset = utf8mb4;

select * from estoque where preco_produto > 500;
select * from estoque where preco_produto < 500;

update estoque set preco_produto = 349.99
where id = 3;

update estoque set nome_produto = "Roronoa Zoro"
where id=6;

select * from estoque