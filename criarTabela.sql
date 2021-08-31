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
