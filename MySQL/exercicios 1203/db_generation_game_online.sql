-- Dados DDL
-- Criação do banco de dados
CREATE DATABASE db_generation_game_online; 

-- Criação da tabela personagens
USE db_generation_game_online;

CREATE TABLE tb_personagens(
	id INT NOT NULL AUTO_INCREMENT,
	nome_personagem VARCHAR(30),
    ataque_personagem INT,
    defesa_personagem INT,
    funcao_personagem ENUM('Duelista', 'Suporte', 'Controlador'),
	habilidades_Personagens SET ('Névoa', 'Espionagem', 'Barreira', 'Cura', 'Teletransporte', 'Eletricidade', 'Incêndiária', 'Tecnologia', 'Toxica'),
    PRIMARY KEY(id)
);

-- Criação da tabela Classe
CREATE TABLE tb_classe(
	id INT NOT NULL AUTO_INCREMENT,
    fk_id_personagem  INT,
    beta_personagem VARCHAR(5),
	PRIMARY KEY(id),
    FOREIGN KEY (fk_id_personagem) REFERENCES tb_personagens(id)
);

-- Dados DML
-- Inserção de valores

INSERT INTO tb_classe (beta_personagem) 
VALUES
('Sim'),
('Não'),
('Não'),
('Sim'),
('Sim'),
('Sim'),
('Sim'),
('Não');

INSERT INTO tb_personagens (nome_personagem,ataque_personagem, defesa_personagem,funcao_personagem,habilidades_Personagens)
VALUES
('Sage', 1200, 2000, 'Suporte', 'Barreira,Cura'),
('Raze', 2000, 1400, 'Duelista', 'Incendiária'),
('KillJoy', 1800,2000, 'Controlador', 'Tecnologia'),
('Omen', 1800, 1400, 'Duelista', 'Névoa,Teletransporte'),
('Jett', 2000, 1400, 'Duelista', 'Névoa'),
('Brimstone', 2000, 1400, 'Duelista', 'Névoa,Incendiária'),
('Viper', 1800, 1800, 'Duelista', 'Névoa,Toxica'),
('Chloe', 1500, 1200, 'Controlador', 'Eletricidade,Espionagem');

SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens WHERE  ataque_personagem >= 2000;
SELECT * FROM tb_personagens WHERE defesa_personagem < 2000;
SELECT * FROM tb_personagens WHERE nome_personagem LIKE 'C%';

-- Inner Join 
SELECT * FROM  tb_personagens INNER JOIN tb_classe ON tb_personagens.id = tb_classe.id ORDER BY tb_personagens.funcao_personagem;

SELECT * FROM tb_personagens WHERE funcao_personagem LIKE '%Duelista';