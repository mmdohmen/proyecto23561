create database proyectoFinal23561;

create table tickets (
	id int auto_increment primary key,
	nombre varchar(50),
	apellido varchar(50),
	mail varchar(50) unique,
	cant int,
	tipo int,
	total float
);

create table oradores (
	id int auto_increment primary key,
    nombre varchar(50),
    apellido varchar(50),
    tema text
);

insert into tickets values (null,'Maximo','GOMEZ','maximogomez@gmail.com',1,1,80);
insert into tickets values (null,'Nicolas','DOH','nicodoh@gmail.com',2,1,80);
insert into tickets values (3,'Sab','ZHAMISKA','zhamiska@gmail.com',2,3,340);
insert into tickets values (null,'Mire','NAVARRO','mnavarro@gmail.com',2,2,100);