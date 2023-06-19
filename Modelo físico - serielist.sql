create database serieList;

use serieList;

create table usuario(
	id INT unsigned not null auto_increment,
    nome varchar(80) not null,
    login varchar(20) not null,
    senha varchar(20) not null,
    email varchar(50) not null,
    primary key (id),
    unique key(login)
);

create table plataforma(
	id int unsigned not null auto_increment,
    nome varchar(50) not null,
    usuario_id int unsigned not null,
    primary key (id),
    foreign key (usuario_id) references usuario(id)
);

create table serie(
	id INT unsigned not null auto_increment,
    nome varchar(80) not null,
    plataforma_id int unsigned not null,
    temporadas int not null,
    status_serie varchar(18) not null,
    lancamento varchar(10) not null,
    usuario_id int unsigned not null,
    primary key (id),
    foreign key (plataforma_id) references plataforma (id),
    foreign key (usuario_id) references usuario (id)
);
