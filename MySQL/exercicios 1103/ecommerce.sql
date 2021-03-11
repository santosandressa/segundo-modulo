USE ecommerce;

CREATE TABLE estoque ( 
	id int NOT NULL AUTO_INCREMENT,
	nome_produto VARCHAR(50) NOT NULL,
    codigo_produto SMALLINT,
    preco_produto DECIMAL(8,2),
    peso_produto DECIMAL(6,2),
    fabricante_produto VARCHAR(40),
    PRIMARY KEY(id)
)DEFAULT CHARSET = utf8mb4;

ALTER TABLE estoque 
MODIFY COLUMN peso_produto DECIMAL(5,3);

SELECT * FROM estoque WHERE preco_produto > 500;
SELECT * FROM estoque WHERE preco_produto < 500;

UPDATE estoque SET preco_produto = 349.99
WHERE id = 3;

UPDATE estoque SET nome_produto = "Roronoa Zoro"
WHERE id=6;

SELECT * FROM estoque