--questoes
--1
select pacotes_nome, pacotes_descricao, pacotes_duracao, pacotes_preco
from pacotes
inner join destino on pacotes.destino_fk = destino.destino_id
where destino_distancia_da_terra < 1000000;

--2
ALTER TABLE Destino
ALTER COLUMN Destino_descricao VARCHAR(MAX);

select top 5 Destino_nome,Destino_descricao  , count(*) as totalvendido
from Destino
inner join Pacotes pacotes on Destino_id = pacotes.Destino_fk
group by Destino.Destino_id,Destino_descricao  ,Destino.Destino_nome
order by totalvendido desc


--3
select pacote.Pacotes_nome, pacote.Pacotes_descricao, pacote.Pacotes_duracao, pacote.Pacotes_preco 
from Cliente
inner join Pacotes pacote on Cliente_id = pacote.Pacotes_id
where (Cliente_id = pacote.Pacotes_id) = Cliente_id


-- 4
select Cliente.Cliente_nome, Avaliacoes.Pontuacao
from Avaliacoes
inner join Cliente on Avaliacoes.Cliente_fk = Cliente.Cliente_id
where Avaliacoes.Pacotes_fk = 6
order by Avaliacoes.Pontuacao asc


--5 
Select Guias.Guias_nome, Guias.Guias_descricao
from Guias
inner join pacotes on Guias_id = pacotes.Pacotes_id
where Pacotes.Pacotes_id = 4

--6
ALTER TABLE Pacotes
ALTER COLUMN Pacotes_descricao VARCHAR(MAX);

select Pacotes_nome, Pacotes_descricao, Pacotes_duracao, COUNT(*) as total_vendas
from Pacotes
inner join Cliente on Cliente.Cliente_id = Pacotes_fk
group by Pacotes.Pacotes_id, Pacotes.Pacotes_nome, Pacotes.Pacotes_descricao, Pacotes.Pacotes_duracao
order by total_vendas desc

--7
Select Pacotes.Pacotes_nome, Pacotes.Pacotes_descricao, Pacotes.Pacotes_preco
from Cliente
inner join Pacotes on Pacotes.Pacotes_id = Cliente_id
where Pacotes.Pacotes_preco < 3000

--8 
Select Pacotes.Pacotes_nome, Pacotes.Pacotes_descricao, Pacotes.Pacotes_preco
from Cliente
inner join Pacotes on Pacotes.Pacotes_id = Cliente_id
where Cliente.Cliente_id = 3

--9
Select Pacotes_nome, Pacotes_descricao, Pacotes_preco
from Pacotes
where Pacotes_duracao >= '2023-06-1'

--10
Select Pacotes.Pacotes_nome, Pacotes.Pacotes_descricao, Pacotes.Pacotes_preco
from Cliente
inner join Pacotes on Pacotes.Pacotes_id = Cliente_id
where Pacotes_duracao > '2023-00-1'
order by Pacotes.Pacotes_preco asc