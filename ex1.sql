create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
id_classe int PRIMARY KEY AUTO_INCREMENT,
tipo_classe enum ('Arqueira Verde', 'Guerreira de Oz', 'Mestre Mago', 'Lutadora'),
tipo_arma enum ('Arco', 'Espada', 'Machado', 'Cajado')
);

create table tb_personagem (
habilidade varchar(45),
poder_ataque int,
poder_defesa int,
nome varchar(45),
sexo enum ('M','F'),
id_classe int,
CONSTRAINT fk_tb_classe FOREIGN KEY (id_classe) REFERENCES tb_classe (id_classe)
);

insert tb_classe (tipo_classe, tipo_arma) values 
('Arqueira Verde','Arco'),
('Guerreira de Oz','Espada'),
('Mestre Mago','Cajado'),
('Lutadora','Machado');

select * from tb_classe;

insert tb_personagem (habilidade, poder_ataque, poder_defesa, nome, sexo, id_classe) values
('Atirar', 2560, 2670, 'Arqueira Verde', 'F', 1),
('Defender',1500, 4670, 'Guerreira de Oz', 'F', 2),
('Atirar', 2100, 1870, 'Arqueira Verde', 'F', 1),
('Feitiço', 2330, 1670, 'Mestre Mago', 'M',3),
('Lutar', 4560, 1990, 'Lutadora', 'F',4),
('Defender', 1470, 1999, 'Guerreira de OZ', 'F',2),
('Feitiço', 2190, 1970, 'Mestre Mago', 'M',3),
('Lutar', 3990, 1670, 'Lutadora', 'F',4);

select * from tb_personagem;

select * from tb_personagem WHERE poder_ataque > 2000;

SELECT * FROM tb_personagem WHERE poder_defesa BETWEEN 1000 and 2000;

select * from tb_personagem WHERE nome like '%c%';
