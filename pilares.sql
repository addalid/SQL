CREATE DATABASE PILARES;
USE PILARES;
CREATE TABLE PROFESOR(
  idprof INT primary key,
  nombre VARCHAR(25),
  carrera VARCHAR(25)
  );
  


  CREATE TABLE TALLER(
    idtaller int primary key,
    nombre VARCHAR(20),
    cupo INT,
    área VARCHAR(20),
    idprof INT,
    foreign key (idprof) references PROFESOR(idprof)
  );
    


    CREATE TABLE USUARIO(
      idusuario INT primary key,
      nombre INT,
      fecha_nac INT
      );
      
      
      
    CREATE TABLE ASISTIR (
     idasistencia INT primary key,
     idtaller INT,
     idusuario INT,
     fecha DATETIME,
     foreign key (idtaller) references TALLER(idtaller),
     foreign key (idusuario) references USUARIO(idusuario)
     );
