drop database if exists elEmma;

create database elEmma;
use elEmma;

create table tablita(
Nombre nvarchar(15), 
ApellidoP nvarchar(15), 
ApellidoM nvarchar(15), 
Escuela nvarchar(15)
);

drop procedure if exists guardaAlumno;

delimiter **

create procedure guardaAlumno(in neim nvarchar(15),in neimP nvarchar(15),in neimM nvarchar(15),in scul nvarchar(15))
begin
declare msj nvarchar(20);
	insert into tablita(Nombre, ApellidoP, ApellidoM, Escuela)
    values (neim, neimP, neimM, scul);
	set msj = 'kmara';

end; **
delimiter ;

