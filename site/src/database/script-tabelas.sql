create database projetoindividual;
use projetoIndividual;
    
create table equipe(
	idEquipe int primary key auto_increment,
    nome varchar(30) unique,
    estado varchar(20),
    municipio varchar(25)
);

insert into equipe values
	(null, 'ACBF', 'Rio Grande do Sul', 'Carlos Barbosa'),
	(null, 'Assoeva', 'Rio Grande do Sul', 'Vênancio Aires'),
	(null, 'Atlântico', 'Rio Grande do Sul', 'Erechim'),
	(null, 'Blumenau', 'Santa Catarina', 'Blumenau'),
	(null, 'Campo Mourão', 'Paraná', 'Campo Mourão'),
	(null, 'Cascavel', 'Paraná', 'Cascavel'),
	(null, 'Corinthians', 'São Paulo', 'São Paulo'),
	(null, 'Foz Cataratas', 'Paraná', 'Foz do Iguaçu'),
	(null, 'Jaraguá', 'Santa Catarina', 'Jaraguá do Sul'),
	(null, 'Joaçaba', 'Santa Catarina', 'Flor da Serra'),
	(null, 'Joinville', 'Santa Catarina', 'Joinville'),
	(null, 'Magnus', 'São Paulo', 'Sorocaba'),
	(null, 'Marechal', 'Paraná', 'Marechal Cândido Rondon'),
	(null, 'Marreco', 'Paraná', 'Francisco Beltrão'),
	(null, 'Minas', 'Minas Gerais', 'Belo Horizonte'),
	(null, 'Pato', 'Paraná', 'Pato Branco'),
	(null, 'Praia Clube', 'Minas Gerais', 'Uberlândia'),
	(null, 'Santo André', 'São Paulo', 'Santo André'),
	(null, 'São José', 'São Paulo', 'São José dos Campos'),
	(null, 'Taubaté', 'São Paulo', 'Taubaté'),
	(null, 'Tubarão', 'Santa Catarina', 'Tubarão'),
	(null, 'Umuarama', 'Paraná', 'Umuarama');

create table usuario(
	idUsuario int primary key auto_increment,
    nome varchar(70) not null,
    -- fkEquipe int,
    fkEquipe int not null,
    foreign key (fkEquipe) references equipe(idEquipe),
    email varchar(50) not null unique,
    senha varchar(50) not null
);

insert into usuario values
	(null, 'Mizael', 1, 'mizael@gmail.com', '123456'),
	(null, 'Leticia', 2, 'leticia@gmail.com', '123456'),
	(null, 'William', 3, 'will@gmail.com', '123456'),
	(null, 'Calebe', 4, 'Calebe@gmail.com', '123456'),
	(null, 'Pietra', 5, 'Pietra@gmail.com', '123456'),
	(null, 'Thiago', 6, 'Thiagohumberto@gmail.com', '123456'),
	(null, 'Isaque', 7, 'Isaque@gmail.com', '123456'),
	(null, 'Rafael', 7, 'rafa@gmail.com', '123456'),
	(null, 'Guilherme', 8, 'gui@gmail.com', '123456'),
	(null, 'Diego', 9, 'diego@gmail.com', '123456'),
	(null, 'Lucas', 10, 'lucas@gmail.com', '123456'),
	(null, 'David', 11, 'david@gmail.com', '123456'),
	(null, 'João', 12, 'joao@gmail.com', '123456'),
	(null, 'Paulo', 13, 'paulo@gmail.com', '123456'),
	(null, 'Fernando', 14, 'fernando@gmail.com', '123456'),
	(null, 'Jair', 15, 'jair@gmail.com', '123456'),
	(null, 'Kleber', 16, 'kleber@gmail.com', '123456'),
	(null, 'Karina', 17, 'karina@gmail.com', '123456'),
	(null, 'Vitor', 18, 'vitor@gmail.com', '123456'),
	(null, 'Vivian', 19, 'vivian@gmail.com', '123456'),
	(null, 'Luiz', 20, 'luiz@gmail.com', '123456'),
	(null, 'Thiago', 21, 'thiago@gmail.com', '123456'),
	(null, 'Eduardo', 22, 'eduardo@gmail.com', '123456');

-- desc usuario;

insert into usuario value
	(null, 'felipe', 7, 'felipe@gmail.com', 123456);
    
insert into usuario value
	(null, 'teste', 1, 'teste@gmail.com', 123456);
    
-- select * from usuario;

-- select * from usuario u
-- 	join equipe e on u.fkEquipe = e.idEquipe
--     order by idEquipe asc;

select *, count(idUsuario) as 'torcedores' from usuario u 
	join equipe as e on e.idEquipe = u.fkEquipe
    group by fkEquipe
    order by idEquipe;
    
-- drop database projetoIndividual;

-- truncate table usuario;