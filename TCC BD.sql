CREATE DATABASE TESTE1;

use TESTE1;
cReaTe tAbLe tbADM(

CodigoADM Varchar(40) not null,
SenhaADM Varchar(40) not null
);

insert into tbADM (CodigoADM, SenhaADM)
Values ("151", "Etec2023ADM");



create table tbcomentarios(

nomeVeterano varchar(90) not null,
rmVeterano int(5) not null primary key,
texto text(2000) not null,
curso VARCHAR(4) NOT NULL,
condicao char(1) default ("I"),

CONSTRAINT curso_check CHECK (curso IN ('INFO', 'ADM', 'RH', 'JUR', 'MKT'))	
);

insert into tbcomentarios(nomeVeterano, rmVeterano, texto, curso)
values ("Renan", 31775, "muito bom","INFO");




create table tbRM (
    nome VARCHAR(255) NOT NULL,
    rm INT(5) primary key,
    curso VARCHAR(4) NOT NULL,

CONSTRAINT curso_check CHECK (curso IN ('INFO', 'ADM', 'RH', 'JUR', 'MKT'))
);

INSERT INTO tbRM (nome, rm, curso)
VALUES 
("ADRYELLY DE OLIVEIRA", 31767, "INFO"),
("ANA CLARA MAXIMINO", 31957, "INFO"),
("ARTHUR BARBEIRO AGUIAR", 31782, "INFO"),
("BRUNO MENDES DA SILVA", 31777, "INFO"),
("BRYAN BELARMINO MOREIRA", 31766, "INFO"),
("CARLOS ALEXANDRE DA SILVA GOMES", 31765, "INFO"),
("CAUÃ ALTRON PULIANI", 31790, "INFO"),
("CAUÊ RODRIGUES NUNES EVANGELISTA", 31958, "INFO"),
("CÉSAR AUGUSTO FREITAS SAVOLDI", 31789, "INFO"),
("ESTEVÃO DA SILVA LUCRECIO", 31888, "INFO"),
("FELIPE NETTO DA COSTA", 31275, "INFO"),
("FELIPE SILVA DE SOUZA", 31786, "INFO"),
("GABRIEL CESAR RODRIGUES", 31783, "INFO"),
("GABRIEL PARIJANI CUSTODIO", 31788, "INFO"),
("GABRIEL PINHEIRO CHAGAS FERNANDES", 31774, "INFO"),
("HENRIQUE RODRIGUES BARBOSA", 31769, "INFO"),
("INGRID CAVALLI DA SILVA", 31781, "INFO"),
("ISABELA DE OLIVERA GUESSI", 31762, "INFO"),
("JHONATAN GOBETI NUNES", 31768, "INFO"),
("JOÃO GILBERTO CANAL FAVARO", 31883, "INFO"),
("JOÃO PEDRO DE LIMA SANTOS", 31885, "INFO"),
("JOÃO PEDRO DE OLIVEIRA SPERA", 31772, "INFO"),
("JOÃO PEDRO PAULINO SPINDA", 31884, "INFO"),
("JULIA BELLINI SORRENTE", 31784, "INFO"),
("KAIQUE ALVES DE CONTI", 31776, "INFO"),
("LETÍCIA DA SILVA FRANCISCO", 31780, "INFO"),
("LETÍCIA PEREIRA DA SILVA", 31770, "INFO"),
("LETYCIA CONDE DA CRUZ", 31979, "INFO"),
("LUCAS ALESSANDRO MENDONÇA BENTO", 31889, "INFO"),
("LUCAS DANIEL TAVARES MAXIMO", 31773, "INFO"),
("LUIGI AUGUSTO VAZ CASSIANO DA SILVA", 31787, "INFO"),
("MARCOS ALEXANDRE ALVES ARAUJO", 31778, "INFO"),
("PABLO HENRIQUE NOGUEIRA", 31887, "INFO"),
("PEDRO HENRIQUE ALVES DIAS", 31886, "INFO"),
("PEDRO HENRIQUE DEZEM", 31763, "INFO"),
("RAFAEL DO NASCIMENTO", 31761, "INFO"),
("RENAN BRITO DE MORAES", 31775, "ADM"),
("RIAD ABBES BERNARDE", 31764, "INFO"),
("VINICIUS SILVA GUEDES", 32001, "INFO");
