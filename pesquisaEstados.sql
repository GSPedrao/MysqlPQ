
--Estados

select * from estados;

select nome as 'Nome do Estado',sigla UF, regiao as oregião from estados;

select * from estados where regiao = 'Norte';

select *,now() as 'Data e hora' from estados where regiao = 'Sudeste';

select * from estados where populacao > 10.00;

select * from estados where populacao <= 10.00;

select count(nome) as 'Numero de estados Centro-Oeste' from estados where regiao = 'Centro-Oeste';


--Cidades

INSERT INTO cidades
('nome','estado','area')
VALUE
('Londrina', 28, 1.651),
('Ibiporã', 28, 300.187),
('Cambé', 28, 495,4),
('São Paulo', 22, 1.521 ),
('Juazeiro', 2, 6.501),
('Colatina', 5, 1.417),
('Presidente Prudente', 22, 562.794),
('Rio de Janeiro', 16, 1.255),
('Fortaleza', 3, 313,8),
('Manaus', 13, 11.401);

