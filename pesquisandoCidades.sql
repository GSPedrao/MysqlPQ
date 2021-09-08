

--Cidades

INSERT INTO cidades
(nome, estado_id, area)
VALUES
('Londrina', 28, 1.651),
('Ibiporã', 28, 300.187),
('Cambé', 28, 495.4),
('São Paulo', 22, 1.521 ),
('Juazeiro', 2, 6.501),
('Colatina', 5, 1.417),
('Presidente Prudente', 22, 562.794),
('Rio de Janeiro', 16, 1.255),
('Fortaleza', 3, 313.8),
('Manaus', 13, 11.401);

select * from cidades

desc cidades

select nome from `cidades` where nome like 'L%'

select nome from cidad