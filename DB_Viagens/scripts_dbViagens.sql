create database db_Viagens;
use db_Viagens;


create table Destino(
	Destino_id int primary key identity(1,1),
	Destino_nome varchar(100),
	Destino_descricao text,
	Destino_distancia_da_Terra float,
);

create table Pacotes(
	Pacotes_id int primary key identity(1,1),
	Pacotes_nome varchar(100)not null,
	Pacotes_descricao text,
	Pacotes_duracao varchar(100),
	Pacotes_preco money not null,
	Destino_fk int foreign key references Destino(Destino_id)
);

create table Cliente(
	Cliente_id int primary key identity(1,1),
	Cliente_nome varchar(100) not null,
	Cliente_email varchar(100),
	Cliente_Nasc date,
	Pacotes_fk int foreign key references Pacotes(Pacotes_id)
);

create table Avaliacoes(
	Avaliacoes_id int primary key identity(1,1),
    Pontuacao int not null,
    Comentario text,
	Pacotes_fk int foreign key references Pacotes(Pacotes_id),
	Cliente_fk int foreign key references Cliente(Cliente_id),
);

create table Guias (
	Guias_id int primary key identity(1,1),
	Guias_nome varchar(100) not null,
	Guias_descricao text,
	Guias_especialidade varchar(100) not null,
	Pacotes_fk int foreign key references Pacotes(Pacotes_id)
);