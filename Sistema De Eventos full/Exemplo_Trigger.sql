create table Departamentos (
    Departamentos_id int primary key,
    Departamentos_nome varchar(50),
    Departamentos_qtd int
);
create table Funcionarios (
    Funcionarios_id int primary key,
    Funcionarios_nome varchar(50),
    Departamentos_fk int foreign key references Departamentos(Departamentos_id)
);

-- Inserção de departamentos
insert into Departamentos (Departamentos_id, Departamentos_nome, Departamentos_qtd)
values (1, 'Vendas', 5);
insert into Departamentos (Departamentos_id, Departamentos_nome, Departamentos_qtd)
values (2, 'RH', 3);

-- Inserção de funcionários
insert into Funcionarios (Funcionarios_id, Funcionarios_nome, Departamentos_fk)
values (1, 'João Jobes', 1);
insert into Funcionarios (Funcionarios_id, Funcionarios_nome, Departamentos_fk)
values (2, 'Maria Mara', 1);
insert into Funcionarios (Funcionarios_id, Funcionarios_nome, Departamentos_fk)
values (3, 'Pedro Pórco', 2);

select * from Departamentos
select * from Funcionarios

create trigger QuantidadeFuncionarios
on Funcionarios
after delete 
as 
begin
 set nocount On

    UPDATE Departamentos
    set Departamentos_qtd = Departamentos_qtd - 1
	from Departamentos
    inner join deleted on Departamentos.Departamentos_id = deleted.Departamentos_fk
end;

delete from Funcionarios where Funcionarios_id = 1 
