select * from estados e, cidades c;

select * from estados e, cidades c
where e.id_estado = c.estado_id;

select e.nome estado, c.nome cidade from estados e, cidades c where e.id_estado = c.estado_id;

select *  from estados e INNER join cidades c ON e.id_estado = c.estado_id;