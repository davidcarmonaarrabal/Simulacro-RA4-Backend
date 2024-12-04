-- Active: 1726916793907@@127.0.0.1@3306
CREATE DATABASE escuela
    DEFAULT CHARACTER SET = 'utf8mb4';

USE escuela;

CREATE TABLE alumnos (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(100) NOT NULL,      
    localidad VARCHAR(100),            
    fecha_nacimiento DATE NOT NULL  
);


CREATE TABLE profesores (
    id INT AUTO_INCREMENT PRIMARY KEY,       
    nombre VARCHAR(100) NOT NULL,            
    especialidad VARCHAR(50) NOT NULL,      
    estado_civil ENUM('SOLTERO', 'CASADO', 'VIUDO') NOT NULL 
);

INSERT INTO alumnos (nombre, localidad, fecha_nacimiento)
VALUES 
('David', 'Montilla', '2003-05-23'),
('Ismael', 'Puente Genil', '2005-11-21'),
('Carlos', 'Córdoba', '2997-02-14')

INSERT INTO profesores (nombre, especialidad, estado_civil)
VALUES 
('Jose', 'Backend', 'CASADO'),
('Miguel', 'Frontend', 'SOLTERO'),
('Carmen', 'Laravel', 'CASADO')