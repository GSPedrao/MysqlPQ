
--Estados

select * from estados;

select nome as 'Nome do Estado',sigla UF, regiao as oregião from estados;

select * from estados where regiao = 'Norte';

select *,now() as 'Data e hora' from estados where regiao = 'Sudeste';

select * from estados where populacao > 10.00;

select * from estados where populacao <= 10.00;

select count(nome) as 'Numero de "estados Centro-Oeste' from estados where regiao = 'Centro-Oeste';

select nome, regiao, id_estado from `estados` where regiao LIKE 'N%';

select nome, regiao, id_estado from `estados` where nome LIKE 'O%';

select nome, regiao, id_estado from `estados` where nome LIKE '_a%';

select nome, regiao from estados where populacao >= 10 order by populacao desc;
