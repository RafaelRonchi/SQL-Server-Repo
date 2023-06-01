create database Consultorio;
drop database Consultorio;
create table AreaMedicina(
	id_Cargo int primary key Identity(1,1),
	Nome varchar(50),
	descricao text
);

insert into AreaMedicina values ('Cardiologista', 'cuida do coração'), ('Cirurgia', 'abre os outros'), ('Dermatologia', 'cuida da pele'), ('Pediatria', 'cuida de ciança')
select * from AreaMedicina;

create table medico(
	id_Medico int primary key Identity(1,1),
	Nome varchar(50),
	CRM int,
	cpf varchar(50),
	fkArea int foreign key references AreaMedicina(id_Cargo)
);

INSERT INTO medico (Nome, CRM, CPF, fkArea)
VALUES ('Gandalf Greybeard', '12345', '111.111.111-11', 1);
INSERT INTO medico (Nome, CRM, CPF, fkArea)
VALUES ('Legolas Greenleaf', '98765', '222.222.222-22', 2);
INSERT INTO medico (Nome, CRM, CPF, fkArea)
VALUES ('Aragorn Arathornson', '54321', '333.333.333-33', 3);
INSERT INTO medico (Nome, CRM, CPF, fkArea)
VALUES ('Drizzt Do''Urden', '67890', '444.444.444-44', 4);
INSERT INTO medico (Nome, CRM, CPF, fkArea)
VALUES ('Elminster Everhander', '13579', '555.555.555-55', 1);
select * from medico;

select medico.nome, AreaMedicina.descricao from medico inner join AreaMedicina on medico.fkArea = AreaMedicina.id_Cargo order by medico.Nome;
select count(medico.id_Medico) as TotaldeFuncionario, AreaMedicina.Nome from medico inner join AreaMedicina on medico.fkArea = AreaMedicina.id_Cargo group by AreaMedicina.Nome;
select medico.nome, AreaMedicina.Nome from medico inner join AreaMedicina on medico.fkArea = AreaMedicina.id_Cargo where AreaMedicina.nome = 'Cardiologista';
select medico.CRM from medico inner join AreaMedicina on medico.fkArea = AreaMedicina.id_Cargo where AreaMedicina.nome != 'Pediatria';