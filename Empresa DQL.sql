-- Ordenamos a los empleados por su fecha_nacimiento
select * from empleados order by fecha_nacimiento desc;


-- Agrupar registros (group by)
select pedido_id, count(*) as "Cantidad pedidos" from Detalles_Pedido
group by producto_id;


-- Calcular cuanto gana por dia un empleado y luego multiplicarlo por 30
select (salario * 8) * 30 as "Sueldo Mensual" from Empleados;


-- Condicionar registro (where)
select nombre, timestampdiff(year, fecha_nacimiento, curdate()) as Edad 
from empleados having Edad > 30;


select curdate(); -- Trae la fecha actual


-- llamar al cliente, al producto y a la fecha del pedido
select clientes.nombre as "Clientes", productos.nombre as "Productos", 
	pedidos.fecha_pedido from clientes
    join pedidos on clientes.id = pedidos.cliente_id
    join detalles_pedido on pedidos.id = detalles_pedido.pedido_id
    join productos on productos.id = detalles_pedido.producto_id;

-- Agrupar registros y condicionar (group by, having)
/* 
	Seleccionar la cantidad de registros de los clientes, 
	el nombre, producto y el total agrupandolos donde
    la cantidad de compra sea mayor a 1
*/
select count(*) as cantidad_compra, clientes.nombre as "Clientes", productos.nombre as "Productos", 
	pedidos.fecha_pedido, pedidos.total from clientes
join pedidos on clientes.id = pedidos.cliente_id
join detalles_pedido on pedidos.id = detalles_pedido.pedido_id
join productos on productos.id = detalles_pedido.producto_id
group by clientes.nombre having cantidad_compra > 1;


-- Sacar suma, porcentaje y cantidad ( sum(), avg(), count() )
select avg( (salario * 8) * 30) as "promedio ganado por mes" 
from empleados;

-- Left join y Right join.
select empleados.nombre as "Empleados", empleados.apellido, 
asignaciones.fecha_asignacion, departamentos.nombre as "Departamento" 
from empleados
left join asignaciones on empleados.id = asignaciones.empleado_id
left join departamentos on departamentos.id = asignaciones.departamento_id;