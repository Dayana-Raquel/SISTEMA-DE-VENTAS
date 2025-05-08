-- CREAR UNA BASE DE DATOS

CREATE database bd_sistema_ventas;

USE bd_sistema_ventas;

-- crear tabla usuarios
CREATE TABLE tb_usuario(
idUsuario int(11) auto_increment primary key,
nombre varchar(30) not null,
apellido varchar(30) not null,
usuario varchar(15) not null,
password varchar(15) not null,
telefono varchar(15) not null,
estado int(1) not null
);

INSERT INTO tb_usuario(nombre, apellido, usuario, password, telefono, estado)
VALUES("Dayana", "Bazualdo", "dayana", "12345", "8543296","1");

SELECT * FROM tb_usuario WHERE usuario = 'dayana' AND password = '12345';
SELECT 1;

SELECT * FROM tb_usuario;

-- crear tabla cliente
CREATE TABLE tb_cliente(
idCliente int(11) auto_increment primary key,
nombre varchar(30) not null,
apellido varchar(30) not null,
cedula varchar(15) not null,
telefono varchar(15) not null,
direccion varchar(100) not null,
estado int(1) not null
);


-- crear tabla categoria
CREATE TABLE tb_categoria(
idCategoria int(11) auto_increment primary key,
descripcion varchar(200) not null,
estado int(1) not null
);


-- crear tabla producto
CREATE TABLE tb_producto(
idProducto int(11) auto_increment primary key,
nombre varchar(100) not null,
cantidad int(11) not null,
precio double(10,2) not null,
descripcion varchar(200) not null,
porcentajeIva int(2) not null,
idCategoria int(11) not null,
estado int(1) not null
);


-- crear tabla cabecera de venta
CREATE TABLE tb_cabecera_venta(
idCabeceraVenta int(11) auto_increment primary key,
idCliente int(11) not null,
valorPagar double(10,2) not null,
fechaVenta date not null,
estado int(1) not null
);


-- crear tabla detalle de venta
CREATE TABLE tb_detalle_venta(
idDetalleVenta int(11) auto_increment primary key,
idCabeceraVenta int(11) not null,
idProducto int(11) not null,
cantidad int(11) not null,
precioUnitario double(10,2) not null,
subtotal double(10,2) not null,
descuento double(10,2) not null,
iva double(10,2) not null,
totalPagar double(10,2) not null,
estado int(1) not null
);

show tables;
