-- Criação Banco de Dados
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- DDL
-- Criação das tabelas
CREATE TABLE tb_categorias
(
 id INT NOT NULL AUTO_INCREMENT,
 pizza_categoria  ENUM('Queijos','Frango', 'Carnes', 'Peixes', 'Vegetariana', 'Doce'),
 sabores VARCHAR(50), 
 PRIMARY KEY (id)
);

CREATE TABLE tb_pizza
(
	id INT NOT NULL AUTO_INCREMENT,
    pizza_valores DECIMAL(4,2),
    fk_id_categorias INT,
    PRIMARY KEY(id),
    FOREIGN KEY (fk_id_categorias) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(pizza_categoria, sabores)
VALUES
('Queijos', 'Catupiry' ),
('Queijos', 'Mussarela' ),
('Queijos', 'Quatro Queijos'),
('Queijos', 'Marquerita' ),
('Queijos', 'Napolitana' ),
('Queijos', 'Provolone' ),
('Frango', 'Caipira' ),
('Frango', 'Frango com Catupiry' ),
('Frango', 'Frango com Cream Cheese' ),
('Carnes', 'Bacon' ),
('Carnes', 'Bauru' ),
('Carnes', 'Calabresa' ),
('Carnes', 'Lombo' ),
('Carnes', 'Salame' ),
('Carnes', 'Peito de Peru' ),
('Carnes', 'Portuguesa' ),
('Peixes', 'Atum' ),
('Peixes', 'Aliche' ),
('Peixes', 'Camarão'),
('Vegetariana', 'Milho'),
('Vegetariana', 'Palmito'),
('Vegetariana', 'Tofu'),
('Vegetariana', 'Brócolis'),
('Doce', 'Brigadeiro'),
('Doce', 'Prestigio'),
('Doce', 'Banana'),
('Doce', 'Romeu e Julieta');

INSERT INTO tb_pizza (pizza_valores)
VALUES
(28.00),
(30.00),
(45.00),
(30.00),
(26.00),
(30.00),
(31.00),
(30.00),
(48.00),
(50.00),
(40.00),
(52.00),
(65.00),
(35.00),
(65.00),
(30.00),
(32.00),
(32.00),
(65.00),
(29.00),
(39.00),
(30.00),
(30.00),
(35.00),
(35.00),
(35.00),
(35.00);

-- Selects e Inner join 

SELECT * FROM tb_categorias;

SELECT * FROM  tb_categorias INNER JOIN tb_pizza ON tb_categorias.id = tb_pizza.id
WHERE pizza_valores > 45.00; 

SELECT * FROM  tb_categorias INNER JOIN tb_pizza ON tb_categorias.id = tb_pizza.id
WHERE pizza_valores BETWEEN  29.00 AND 60.00;

SELECT sabores FROM tb_categorias WHERE sabores LIKE 'C%';

SELECT * FROM  tb_categorias INNER JOIN tb_pizza ON tb_categorias.id = tb_pizza.id;

SELECT * FROM  tb_categorias INNER JOIN tb_pizza ON tb_categorias.id = tb_pizza.id 
WHERE pizza_categoria LIKE '%Doce%';
