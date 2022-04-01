SELECT * FROM `empleo`.`estudiante` LIMIT 1000;
SELECT * FROM `empleo`.`empleo` LIMIT 1000;

mysql> create database estudiante;
Query OK, 1 row affected (0.00 sec)
mysql> use empleo;
Database changed

 create table empleo (id_persona int (10) not null primary key auto_increment,Nombre varchar(10) not null, Apellido varchar(10) not null, Telefono int (10), correo varchar(20) not null);

 insert into empleo values (not null,"Juan David","Torres","318354676","jundav23@gmail.com");
 insert into empleo values (not null,"Ana","Contreras","321546765","anacon23@gmail.com");

create table estudiante (id_estudiante int(10) not null primary key auto_increment,Nombre varchar(10) not null, Apellido varchar(15) not null,Telefono int(11) not null, Grado varchar(10) not null);

insert into estudiante values (not  null,"Camila","Lopez","31751234","Noveno");
 insert into estudiante values (not  null,"Andrea","Carranza","35671234","Octavo");




