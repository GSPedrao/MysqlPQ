CREATE TABLE estados (
    id_estado INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    regiao ENUM ('Norte','Nordeste','Centro-Oeste','Sudeste', 'Sul') NOT NULL,
    populacao DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id_estado),
    UNIQUE KEY (nome),
    UNIQUE KEY (sigla)
);

Insert INTO estados
(nome, sigla, regiao,populacao)
VALUES
('Avre','AC','Norte',0.83);

-- Mais estados
INSERT INTO estados
    (nome, sigla, regiao, populacao)
VALUES
    ('Bahia', 'BA', 'Nordeste', 15.34),
    ('Ceará', 'CE', 'Nordeste', 9.02),
    ('Distrito Federal', 'DF', 'Centro-Oeste', 3.04),
    ('Espírito Santo', 'ES', 'Sudeste', 4.02),
    ('Goiás', 'GO', 'Centro-Oeste', 6.78),
    ('Maranhao', 'MA', 'Nordeste', 7.00),
    ('Mato Grosso', 'MT', 'Centro-Oeste', 3.34),
    ('Mato Grosso do Sul', 'MS', 'Centro-Oeste', 2.71),
    ('Minas Gerais', 'MG', 'Sudeste', 21.12),
    ('Pará', 'PA', 'Norte', 8.36),
    ('Paraíba', 'PB', 'Nordeste', 4.03),
    ('Amazonas', 'AM', 'Norte', 4.06),
    ('Pernambuco', 'PE', 'Nordeste', 9.47),
    ('Piauí', 'PI', 'Nordeste', 3.22),
    ('Rio de Janeiro', 'RJ', 'Sudeste', 16.72),
    ('Rio Grande do Norte', 'RN', 'Nordeste', 3.51),
    ('Rio Grande do Sul', 'RS', 'Sul', 11.32),
    ('Rondônia', 'RO', 'Norte', 1.81),
    ('Roraima', 'RR', 'Norte', 0.52),
    ('Santa Catarina', 'SC', 'Sul', 7.01),
    ('São Paulo', 'SP', 'Sudeste', 45.10),
    ('Sergipe', 'SE', 'Nordeste', 2.29),
    ('Tocantins', 'TO', 'Norte', 1.55);

-- Exemplo de Insert 1
INSERT INTO estados (nome, sigla, regiao, populacao)
    VALUES ('Acre', 'AC', 'Norte', 0.83);

-- Exemplo de Insert 2
INSERT INTO estados 
    (nome, sigla, regiao, populacao)
VALUES
    ('Alagoas', 'AL', 'Nordeste', 3.38),
    ('Amapá', 'AP', 'Norte', 0.8),
    ('Paraná', 'PR', 'Sul', 11.51);

    --cidades

    Create table if not exists cidades (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    estado_id INT UNSIGNED NOT NULL,
    area DECIMAL(10,2),
    PRIMARY KEY (id),
    FOREIGN KEY (estado_id) REFERENCES estados (id_estado)
);

--prefeitos

create table if not exists prefeitos (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
nome varchar(255) NOT NULL,
cidade_id int UNSIGNED,
PRIMARY KEY (id),
FOREIGN KEY (cidade_id) References cidades (id)
);

Insert into prefeitos
(nome, cidade_id)
VALUES 
("Marcelo Bellinati",(select id From `cidades` where nome = 'Londrina')),
('Ricardo Nunes',(select id From `cidades` where nome = 'São Paulo')),
('Angelo Scheller',(select id From `cidades` where nome = 'Cambé')),
('Jose Maria', (select id From `cidades` where nome = 'Ibiporã')),
('Susana Alexandra', (select id From `cidades` where nome = 'Juazeiro')),
('Guerino Balestrassi', (select id From `cidades` where nome = 'Colatina')),
('Ed Thomas',(select id From `cidades` where nome = 'Presidente Prudente')),
('Eduardo Paes',(select id From `cidades` where nome = 'Rio de Janeiro')),
('Roberto Cláudio',(select id From `cidades` where nome = 'Fortaleza')),
('David Almeida',(select id From `cidades` where nome = 'Manaus')),
('Pedrao', null),
('Kevin', null),
('Pulo', null),
('Allyfo', null);

create table if not exists empresas_cidades(
    empresa_id int UNSIGNED NOT NULL,
    cidade_id int unsigned not null,
    sede int(1) not null,
    primary key (empresa_id, cidade_id)
);

