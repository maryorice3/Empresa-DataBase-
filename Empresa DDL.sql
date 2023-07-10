-- Crear la base de datos
drop database if exists empresa;
CREATE DATABASE empresa;

-- Usar la base de datos
USE empresa;

-- Crear la tabla Empleados
CREATE TABLE Empleados (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  fecha_nacimiento date,
  direccion VARCHAR(100),
  salario double
);

-- Crear la tabla Departamentos
CREATE TABLE Departamentos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  ubicacion VARCHAR(100)
);

-- Crear la tabla Asignaciones
CREATE TABLE Asignaciones (
  id INT PRIMARY KEY AUTO_INCREMENT,
  empleado_id INT,
  departamento_id INT,
  fecha_asignacion DATE,
  FOREIGN KEY (empleado_id) REFERENCES Empleados(id),
  FOREIGN KEY (departamento_id) REFERENCES Departamentos(id)
);

-- Crear la tabla Clientes
CREATE TABLE Clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  direccion VARCHAR(100),
  telefono VARCHAR(20)
);

-- Crear la tabla Pedidos
CREATE TABLE Pedidos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT,
  fecha_pedido DATE,
  total DECIMAL(10, 2),
  FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

-- Crear la tabla Productos
CREATE TABLE Productos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion TEXT,
  precio DECIMAL(10, 2)
);

-- Crear la tabla Detalles_Pedido
CREATE TABLE Detalles_Pedido (
  id INT PRIMARY KEY AUTO_INCREMENT,
  pedido_id INT,
  producto_id INT,
  cantidad INT,
  FOREIGN KEY (pedido_id) REFERENCES Pedidos(id),
  FOREIGN KEY (producto_id) REFERENCES Productos(id)
);

select * from Detalles_Pedido;

-- Crear tabla (create) OK
-- Eliminar tabla (drop) OK
-- Cambiar nombre de columna (alter) OK
-- Cambiar nombre de tabla (alter) OK
-- Agregar columna (alter) OK
-- Borrar columna (alter) OK

create table tabla1 (
	variable1 int primary key,
    variable2 varchar(20)
);

drop table tabla1;

-- Alteramos la tabla productos, cambiamos columna precio 
-- por costo y su tipo de dato 
alter table productos
change column precio costo double;

-- Alteramos tabla Empleados y la renombramos
alter table Empleados
rename trabajadores;

alter table trabajadores
rename Empleados;

-- Alteramos tabla cliente y Agregamos una columna con su tipo de dato
alter table Clientes
add column mail varchar(50);

-- Alteramos table Clientes y eliminamos columna
alter table Clientes
drop column mail;