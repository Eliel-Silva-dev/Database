create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table if not exists pessoas(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(30) default 'Brasil',
primary key(id)
) default charset = utf8;

insert into pessoas values
(default, 'Claudio', '1975-4-22', 'M', '99.0', '2.15', default),
(default, 'Pedro', '1999-11-12', 'M', '87', '2', 'Colombia'),
(default, 'Janaina', '1987-11-12', 'F', '75.4', '1.66', 'Argentina');

select * from pessoas;

truncate pessoas; /* apaga tofos os dados da tabela sem alterar sua estrutura*/

desc pessoas;

alter table pessoas
add column profissao varchar(30) after nome;

alter table pessoas
modify column profissao varchar(30) not null default '';

alter table pessoas
drop column profissao;

alter table pessoas 
change column profissao prof varchar(20) not null default ''; /* muda o nome da coluna*/

alter table pessoas
rename to gafanhotos;

/*--------------------------------------------------------------------------------------------*/
/*create table cursos*/

create table if not exists cursos (
nome varchar(30) not null unique, 
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset = utf8;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key(idcurso);

desc cursos;

select * from cursos;