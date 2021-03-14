CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria
(
	id INT NOT NULL AUTO_INCREMENT,
    categoria_curso ENUM('Desenho', 'Animação 3D', 'Desenvolvimento Front-End'),
    cursos VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE tb_produto
(
	id INT NOT NULL AUTO_INCREMENT,
    valor_produto DECIMAL (6,2),
	produto_vitalicio ENUM('Sim', 'Não'),
    fk_id_categoria INT,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_id_categoria) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(categoria_curso, cursos)
VALUES
('Desenho', 'Desenho para iniciantes'),
('Desenho', 'Cenários'),
('Desenho', 'Figura Humana'),
('Animação 3D', 'Modelagem 3D - Blender'),
('Animação 3D', 'Adobe After Effects - Básico'),
('Desenvolvimento Front-End', 'HTML5 e CSS3'),
('Desenvolvimento Front-End', 'Javascript'),
('Desenvolvimento Front-End', 'React');

INSERT into tb_produto (valor_produto, produto_vitalicio)
VALUES
(49.99, 'Não'),
(150.00, 'Sim'),
(200.00, 'Sim'),
(749.99, 'Sim'),
(60.00, 'Sim'),
(50.00, 'Não'),
(60.00, 'Não'),
(330.00, 'Sim');

SELECT * FROM  tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.id
WHERE valor_produto > 50.00; 

SELECT * FROM  tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.id
WHERE valor_produto BETWEEN 3.00 AND 60.0;

SELECT * FROM  tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.id
WHERE cursos LIKE 'J%';

SELECT * FROM  tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.id
WHERE categoria_curso LIKE '%Desenvolvimento Front-End%';