CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria
(	id INT NOT NULL AUTO_INCREMENT,
	categoria_produtos ENUM('Alergia', 'Dor e Febre', 'Cuidado Diário'),
	produtos VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos 
(	id INT NOT NULL AUTO_INCREMENT,
    quantidade_produtos INT,
    valor_produtos DECIMAL(5,2),
    fk_id_categoria INT,
	PRIMARY KEY (id),
    FOREIGN KEY(fk_id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (categoria_produtos,produtos )
VALUES
('Alergia', 'Allegra'),
('Alergia', 'Dexametasona'),
('Alergia', 'Prednisona'),
('Alergia', 'Furacina'),
('Alergia', 'Biofenac'),
('Alergia', 'Loratadina'),
('Dor e Febre', 'Dorflex'),
('Dor e Febre', 'Nevalgina'),
('Dor e Febre', 'AAs'),
('Dor e Febre', 'Advil'),
('Dor e Febre', 'Nevalgina'),
('Dor e Febre', 'Aspirina'),
('Dor e Febre', 'Dipirona'),
('Cuidado Diário', 'Repelente'),
('Cuidado Diário', 'Gilette'),
('Cuidado Diário', 'Sabonete Protex'),
('Cuidado Diário', 'Cortador de Unha'),
('Cuidado Diário', 'Cola de Cílios'),
('Cuidado Diário', 'Escova de Dente');

 INSERT INTO tb_produtos ( quantidade_produtos, valor_produtos)
 VALUES 
 (200, 14.60),
 (450, 12.60),
 (150, 10.00),
 (256, 10.00),
 (15, 16.00),
 (40, 62.00),
 (100, 8.00),
 (80, 6.30),
 (450, 6.00),
 (487, 5.90),
 (85, 7.00),
 (450, 5.40),
 (450, 6.00),
 (80, 25.00),
 (100, 12.00),
 (52, 20.00),
 (30, 5.00),
 (120, 10.00),
 (500,15.00);

SELECT * FROM tb_categoria;
SELECT * FROM tb_produtos;
SELECT * FROM  tb_categoria INNER JOIN tb_produtos ON tb_categoria.id = tb_produtos.id;

SELECT * FROM  tb_categoria INNER JOIN tb_produtos ON tb_categoria.id = tb_produtos.id 
WHERE valor_produtos > 50.00 ;

SELECT *  FROM tb_categoria INNER JOIN tb_produtos ON tb_categoria.id = tb_produtos.id 
WHERE valor_produtos BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_categoria
WHERE produtos LIKE 'B%';

SELECT * FROM  tb_categoria INNER JOIN tb_produtos ON tb_categoria.id = tb_produtos.id 
WHERE categoria_produtos LIKE '%Cuidado Diário%';

