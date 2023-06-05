--1 
select * from Avaliacoes;

--2 
select Avaliacoes.Comentario, Avaliacoes.Pontuacao from Avaliacoes
where Avaliacoes.Pontuacao = 5;

--3 
select COUNT(*) as 'total de registro' from Avaliacoes;

--4 
select sum(Pontuacao) as 'Soma total' from Avaliacoes;
select avg(Pontuacao) as 'Media total' from Avaliacoes;
select max(Pontuacao) as 'Media total' from Avaliacoes;

--5 
select * from Avaliacoes order by Avaliacoes_id desc;

--6 
select * from Avaliacoes
inner join Cliente on Cliente.Cliente_id = Avaliacoes.Cliente_fk;

--7 
select Avaliacoes.Cliente_fk, sum(Pontuacao) from Avaliacoes group by Avaliacoes.Cliente_fk;

--8
select * from Avaliacoes
where Cliente_fk > 1 and Avaliacoes.Pontuacao > 1 and Avaliacoes.Pacotes_fk < 10;

--9 
select * from Avaliacoes where Avaliacoes.Comentario like 'Eclampsia-delivered';

--10
select * from Avaliacoes where Avaliacoes.Pontuacao > 1 and Avaliacoes.Pontuacao < 3;