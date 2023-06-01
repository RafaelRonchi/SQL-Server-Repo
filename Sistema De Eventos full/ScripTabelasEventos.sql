--eventos



create table Evento(
	Evento_Id int primary key identity(1,1),
	Evento_Nome Varchar(50) not null,
	Evento_Descricao text not null,
	Evento_Data_Inicio Date,
	Evento_Data_termino Date
);
create table Palestrante(
	Palestrante_Id int primary key identity(1,1),
	Palestrante_Nome Varchar(50),
	Palestrante_Biografia text
);
create table Sessao(
	Sessao_Id int primary key identity(1,1),
	Sessao_Titulo Varchar(30) not null,
	Sessao_Descricao text,
	Sessao_Hora_Inicio time,
	Fk_Id_Evento int,
	Fk_Id_Palestrante int,

	constraint Fk_Sess_Evnt foreign key(Fk_Id_Evento)
		references Evento(Evento_Id),
	constraint Fk_Sess_Plst foreign key(Fk_Id_Palestrante) 
		references Palestrante(Palestrante_Id)
);

create table Participante(
	Participante_Id int primary key Identity(1,1),
	Participante_Nome varchar(30) not null,
	Participante_Email Varchar(50) not null
);

create table Inscricao(
	Inscricao_Id int primary key Identity(1,1),
	Fk_Id_Participante int,
	Fk_Id_Sessao int,

	constraint Fk_Ins_Prnt foreign key (Fk_Id_Participante) 
		references Participante(Participante_Id),
	constraint Fk_Ins_Sess foreign key (Fk_Id_Sessao)
		references Sessao(Sessao_Id)
);

--Eventos
INSERT INTO Evento(Evento_Nome, Evento_Descricao, Evento_Data_Inicio, Evento_Data_termino)
VALUES ('Confer�ncia de Neg�cios', 'Uma confer�ncia voltada para empres�rios e empreendedores.', '2023-09-15', '2023-09-17');
INSERT INTO Evento(Evento_Nome, Evento_Descricao, Evento_Data_Inicio, Evento_Data_termino)
VALUES ('Festival de M�sica', 'Um festival de m�sica ao ar livre com v�rias bandas e artistas.', '2023-07-20', '2023-07-22');
INSERT INTO Evento(Evento_Nome, Evento_Descricao, Evento_Data_Inicio, Evento_Data_termino)
VALUES ('Feira de Tecnologia', 'Uma feira que apresenta as �ltimas tend�ncias em tecnologia.', '2023-10-10', '2023-10-12');
INSERT INTO Evento(Evento_Nome, Evento_Descricao, Evento_Data_Inicio, Evento_Data_termino)
VALUES ('Semin�rio de Marketing', 'Um semin�rio focado em estrat�gias e t�ticas de marketing.', '2023-06-05', '2023-06-06');
INSERT INTO Evento(Evento_Nome, Evento_Descricao, Evento_Data_Inicio, Evento_Data_termino)
VALUES ('Exposi��o de Arte', 'Uma exposi��o de arte contempor�nea com obras de renomados artistas.', '2023-08-12', '2023-08-15');

--Palestrantes
INSERT INTO Palestrante (Palestrante_Nome, Palestrante_Biografia)
VALUES ('Jo�o Silva', 'Jo�o Silva � um renomado especialista em neg�cios com vasta experi�ncia em consultoria empresarial.');
INSERT INTO Palestrante (Palestrante_Nome, Palestrante_Biografia)
VALUES ('Maria Santos', 'Maria Santos � uma palestrante motivacional e autora de best-sellers sobre desenvolvimento pessoal.');
INSERT INTO Palestrante (Palestrante_Nome, Palestrante_Biografia)
VALUES ('Carlos Oliveira', 'Carlos Oliveira � um especialista em marketing digital e fundador de uma ag�ncia de publicidade online.');
INSERT INTO Palestrante (Palestrante_Nome, Palestrante_Biografia)
VALUES ('Ana Rodrigues', 'Ana Rodrigues � uma renomada cientista de dados com vasta experi�ncia em an�lise de big data.');
INSERT INTO Palestrante (Palestrante_Nome, Palestrante_Biografia)
VALUES ('Pedro Mendes', 'Pedro Mendes � um palestrante e empreendedor que fundou v�rias startups de sucesso na �rea de tecnologia.');


--Sessao
INSERT INTO Sessao (Sessao_Titulo, Sessao_Descricao, Sessao_Hora_Inicio, Fk_Id_Evento, Fk_Id_Palestrante)
VALUES ('Marketing Digital', 'Uma sess�o introdut�ria sobre os conceitos b�sicos do marketing digital.', '09:00', 1, 1);
INSERT INTO Sessao (Sessao_Titulo, Sessao_Descricao, Sessao_Hora_Inicio, Fk_Id_Evento, Fk_Id_Palestrante)
VALUES ('Estrat�gias de Vendas', 'Uma sess�o focada em t�cnicas eficazes de vendas e negocia��o.', '14:30', 2, 3);
INSERT INTO Sessao (Sessao_Titulo, Sessao_Descricao, Sessao_Hora_Inicio, Fk_Id_Evento, Fk_Id_Palestrante)
VALUES ('An�lise de Dados Avan�ada', 'Uma sess�o aprofundada sobre t�cnicas avan�adas de an�lise de dados.', '11:00', 3, 4);
INSERT INTO Sessao (Sessao_Titulo, Sessao_Descricao, Sessao_Hora_Inicio, Fk_Id_Evento, Fk_Id_Palestrante)
VALUES ('Lideran�a Transformacional', 'Uma sess�o inspiradora sobre lideran�a transformadora e impacto positivo.', '16:15', 4, 2);
INSERT INTO Sessao (Sessao_Titulo, Sessao_Descricao, Sessao_Hora_Inicio, Fk_Id_Evento, Fk_Id_Palestrante)
VALUES ('Inova��o e Empreendedorismo', 'Uma sess�o que explora o papel da inova��o no empreendedorismo de sucesso.', '10:45', 5, 5);

--Participante
INSERT INTO Participante (Participante_Nome, Participante_Email)
VALUES ('Guilherme de Montfort', 'guilherme@example.com');
INSERT INTO Participante (Participante_Nome, Participante_Email)
VALUES ('Isabella de Lancaster', 'isabella@example.com');
INSERT INTO Participante (Participante_Nome, Participante_Email)
VALUES ('Richard de Warwick', 'richard@example.com');
INSERT INTO Participante (Participante_Nome, Participante_Email)
VALUES ('Eleanor de York', 'eleanor@example.com');
INSERT INTO Participante (Participante_Nome, Participante_Email)
VALUES ('Philippe d''Amboise', 'philippe@example.com');
INSERT INTO Participante (Participante_Nome, Participante_Email)
VALUES ('Isabella de Lancaster', 'isabella@example.com'),
       ('Richard de Warwick', 'richard@example.com'),
       ('Eleanor de York', 'eleanor@example.com'),
       ('Philippe d''Amboise', 'philippe@example.com'),
       ('Guilherme de Montfort', 'guilherme@example.com'),
       ('Matilda de Salisbury', 'matilda@example.com'),
       ('Henrique de Kent', 'henrique@example.com'),
       ('Joana de Gales', 'joana@example.com'),
       ('Geoffrey de Anjou', 'geoffrey@example.com'),
       ('Alice de Beaumont', 'alice@example.com'),
       ('Arnold de Devon', 'arnold@example.com'),
       ('Cec�lia de Lorraine', 'cecilia@example.com'),
       ('Baldwin de Flandres', 'baldwin@example.com'),
       ('Elisabeth de Normandia', 'elisabeth@example.com'),
       ('Gerald de Pembroke', 'gerald@example.com'),
       ('Margaret de Northumberland', 'margaret@example.com'),
       ('Louis de Blois', 'louis@example.com'),
       ('Sibyl de Aquitaine', 'sibyl@example.com'),
       ('Hugh de Stafford', 'hugh@example.com'),
       ('Adela de Champagne', 'adela@example.com');

select * from sessao

select * from Inscricao
--Incri��o
INSERT INTO Inscricao (Fk_Id_Participante, Fk_Id_Sessao)
VALUES (2, 4),
       (3, 2),
       (4, 3),
       (5, 5),
       (2, 3),
       (3, 5),
       (4, 2),
       (5, 4),
       (2, 5),
       (3, 4),
       (4, 2),
       (5, 3),
       (2, 4),
       (3, 5),
       (4, 3),
       (5, 2),
       (2, 3),
       (3, 4),
       (4, 5),
       (5, 2);
	   INSERT INTO Inscricao (Fk_Id_Participante, Fk_Id_Sessao)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
       (6, 1), (7, 2), (8, 3), (9, 4), (10, 5),
       (11, 1), (12, 2), (13, 3), (14, 4), (15, 5),
       (16, 1), (17, 2), (18, 3), (19, 4), (20, 5),
       (21, 1), (22, 2), (23, 3), (24, 4), (25, 5),
       (1, 3), (2, 4), (3, 5), (4, 1), (5, 2),
       (6, 3), (7, 4), (8, 5), (9, 1), (10, 2),
       (11, 3), (12, 4), (13, 5), (14, 1), (15, 2),
       (16, 3), (17, 4), (18, 5), (19, 1), (20, 2),
       (21, 3), (22, 4), (23, 5), (24, 1), (25, 2);

select * from Participante;
-- Obter as sess�es de um evento especifico
select * from Sessao where Fk_Id_Evento = 2;

--0bter todos os palestrantes de uma sessao especifica
select Palestrante_nome from Palestrante
inner join Sessao on Palestrante_Id = Fk_Id_Palestrante
where Sessao_Id = 4;

select Palestrante_nome as Nome from Palestrante p
inner join Sessao s on p.Palestrante_Id = s.Fk_Id_Palestrante
where Sessao_Id = 4;

-- Obter TODos os participantes de um evento
SELECT * FROM Participante
INNER JOIN Inscricao ON participante.Participante_Id = Inscricao.Fk_Id_Participante
INNER JOIN Sessao ON Inscricao.Inscricao_Id = Sessao.Sessao_Id;

select Evento_Nome, COUNT(Participante_ID) as ttParticipantes
from Evento E
inner join Sessao s on E.Evento_Id  = s.Fk_Id_Evento
inner join Inscricao I on S.Sessao_Id = I.Fk_Id_Sessao
inner join  Participante p On I.Fk_Id_Participante = p.Participante_Id
group by Evento_Nome

-- Obter as sess�es mais populares ( com maior numero de inscri��es)
Select Sessao_ID, Sessao_Titulo, Count(Inscricao_Id) as Numero_De_Incristos
from Sessao s
left join Inscricao i on s.Sessao_Id = i.Fk_Id_Sessao
group by s.Sessao_Id, s.Sessao_Titulo
order by Numero_De_Incristos Desc;