create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table pessoas(
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

