
-- Insertar datos en la tabla Empleados
INSERT INTO Empleados (nombre, apellido, fecha_nacimiento, direccion, salario)
VALUES ('Juan', 'Pérez', '1989-04-15', 'Calle Principal 123', 2500.00);

INSERT INTO Empleados (nombre, apellido, fecha_nacimiento, direccion, salario)
VALUES ('María', 'López', '1990-08-29', 'Avenida Central 456', 2800.00);

-- Insertar datos en la tabla Departamentos
INSERT INTO Departamentos (nombre, ubicacion)
VALUES ('Ventas', 'Edificio A, Piso 2');

INSERT INTO Departamentos (nombre, ubicacion)
VALUES ('Recursos Humanos', 'Edificio B, Piso 1');

-- Insertar datos en la tabla Asignaciones
INSERT INTO Asignaciones (empleado_id, departamento_id, fecha_asignacion)
VALUES (1, 1, '2023-01-01');

INSERT INTO Asignaciones (empleado_id, departamento_id, fecha_asignacion)
VALUES (2, 2, '2023-02-01');

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (nombre, direccion, telefono)
VALUES ('Cliente A', 'Avenida Principal 789', '123456789');

INSERT INTO Clientes (nombre, direccion, telefono)
VALUES ('Cliente B', 'Calle Secundaria 321', '987654321');

-- Insertar datos en la tabla Pedidos
INSERT INTO Pedidos (cliente_id, fecha_pedido, total)
VALUES (1, '2023-03-01', 150.00);

INSERT INTO Pedidos (cliente_id, fecha_pedido, total)
VALUES (2, '2023-03-15', 250.00);

-- Insertar datos en la tabla Productos
INSERT INTO Productos (nombre, descripcion, costo)
VALUES ('Producto X', 'Descripción del Producto X', 10.00);

INSERT INTO Productos (nombre, descripcion, costo)
VALUES ('Producto Y', 'Descripción del Producto Y', 20.00);

-- Insertar datos en la tabla Detalles_Pedido
INSERT INTO Detalles_Pedido (pedido_id, producto_id, cantidad)
VALUES (1, 1, 5);

INSERT INTO Detalles_Pedido (pedido_id, producto_id, cantidad)
VALUES (2, 2, 3);

-- Insertar datos en la tabla Empleados
INSERT INTO Empleados (nombre, apellido, fecha_nacimiento, direccion, salario)
VALUES ('Pedro', 'Gómez', '1998-03-07', 'Calle Secundaria 789', 3000.00);

INSERT INTO Empleados (nombre, apellido, fecha_nacimiento, direccion, salario)
VALUES ('Laura', 'Hernández', '1999-04-25', 'Avenida Central 654', 3200.00);

-- Insertar datos en la tabla Departamentos
INSERT INTO Departamentos (nombre, ubicacion)
VALUES ('Finanzas', 'Edificio B, Piso 3');

INSERT INTO Departamentos (nombre, ubicacion)
VALUES ('Producción', 'Edificio C, Piso 1');

-- Insertar datos en la tabla Asignaciones
INSERT INTO Asignaciones (empleado_id, departamento_id, fecha_asignacion)
VALUES (3, 2, '2023-03-01');

INSERT INTO Asignaciones (empleado_id, departamento_id, fecha_asignacion)
VALUES (4, 1, '2023-04-01');

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (nombre, direccion, telefono)
VALUES ('Cliente C', 'Avenida Principal 987', '456123789');

INSERT INTO Clientes (nombre, direccion, telefono)
VALUES ('Cliente D', 'Calle Secundaria 654', '789123456');

-- Insertar datos en la tabla Pedidos
INSERT INTO Pedidos (cliente_id, fecha_pedido, total)
VALUES (1, '2023-05-01', 180.00);

INSERT INTO Pedidos (cliente_id, fecha_pedido, total)
VALUES (2, '2023-05-15', 350.00);

-- Insertar datos en la tabla Productos
INSERT INTO Productos (nombre, descripcion, costo)
VALUES ('Producto Z', 'Descripción del Producto Z', 15.00);

INSERT INTO Productos (nombre, descripcion, costo)
VALUES ('Producto W', 'Descripción del Producto W', 25.00);

-- Insertar datos en la tabla Detalles_Pedido
INSERT INTO Detalles_Pedido (pedido_id, producto_id, cantidad)
VALUES (3, 1, 3);

INSERT INTO Detalles_Pedido (pedido_id, producto_id, cantidad)
VALUES (4, 2, 4);

-- Insertar datos en la tabla Empleados
INSERT INTO Empleados (nombre, apellido, fecha_nacimiento, direccion, salario)
VALUES ('Ana', 'Ramírez', '1995-06-28', 'Avenida Principal 456', 2800.00);

INSERT INTO Empleados (nombre, apellido, fecha_nacimiento, direccion, salario)
VALUES ('Carlos', 'Torres', '1974-07-20', 'Calle Secundaria 321', 3200.00);

-- Insertar datos en la tabla Departamentos
INSERT INTO Departamentos (nombre, ubicacion)
VALUES ('Marketing', 'Edificio A, Piso 3');

INSERT INTO Departamentos (nombre, ubicacion)
VALUES ('Logística', 'Edificio C, Piso 2');

-- Insertar datos en la tabla Asignaciones
/*INSERT INTO Asignaciones (empleado_id, departamento_id, fecha_asignacion)
VALUES (5, 1, '2023-06-01');

INSERT INTO Asignaciones (empleado_id, departamento_id, fecha_asignacion)
VALUES (6, 2, '2023-06-15');*/

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (nombre, direccion, telefono)
VALUES ('Cliente E', 'Avenida Principal 654', '987654321');

INSERT INTO Clientes (nombre, direccion, telefono)
VALUES ('Cliente F', 'Calle Secundaria 987', '123456789');

-- Insertar datos en la tabla Pedidos
INSERT INTO Pedidos (cliente_id, fecha_pedido, total)
VALUES (3, '2023-07-01', 200.00);

INSERT INTO Pedidos (cliente_id, fecha_pedido, total)
VALUES (4, '2023-07-15', 400.00);

-- Insertar datos en la tabla Productos
INSERT INTO Productos (nombre, descripcion, costo)
VALUES ('Producto A', 'Descripción del Producto A', 12.00);

INSERT INTO Productos (nombre, descripcion, costo)
VALUES ('Producto B', 'Descripción del Producto B', 18.00);

-- Insertar datos en la tabla Detalles_Pedido
INSERT INTO Detalles_Pedido (pedido_id, producto_id, cantidad)
VALUES (5, 1, 4);

INSERT INTO Detalles_Pedido (pedido_id, producto_id, cantidad)
VALUES (6, 2, 5);

-- Actualizar registro (update) OK
-- Eliminar registro (delete) OK
-- Insertar registro (insert) OK

select * from clientes;

-- Actualizar clientes y colocamos/remplazamos 
-- el dato de direccion donde el id sea igual a 3
update clientes set direccion = "av. siempre viva" where id = 3;

-- Eliminar de productos donde el id sea igual a 6 
-- (Elminamos registro)
delete from productos where id = 6;

select * from empleados;