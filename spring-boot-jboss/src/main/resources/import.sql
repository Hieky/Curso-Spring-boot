INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (1, 'Andres', 'Guzman', 'andres@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (2, 'Ruben', 'Fernandez', 'ruben@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (3, 'Persona1', 'Fernandez', 'persona1@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (4, 'Persona2', 'Fernandez', 'persona2@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (5, 'Persona3', 'Fernandez', 'persona3@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (6, 'Persona4', 'Fernandez', 'persona4@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (7, 'Persona5', 'Fernandez', 'persona5@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (8, 'Persona6', 'Fernandez', 'persona6@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (9, 'Persona7', 'Fernandez', 'persona7@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (10, 'Persona8', 'Fernandez', 'persona8@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (11, 'Persona9', 'Fernandez', 'persona9@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (12, 'Persona10', 'Fernandez', 'persona10@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (13, 'Persona11', 'Fernandez', 'persona11@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (14, 'Persona12', 'Fernandez', 'persona12@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (15, 'Persona13', 'Fernandez', 'persona13@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (16, 'Persona14', 'Fernandez', 'persona14@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (17, 'Persona15', 'Fernandez', 'persona15@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (18, 'Persona16', 'Fernandez', 'persona16@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (19, 'Persona17', 'Fernandez', 'persona17@bolsadeideas.com', '2019-11-03','');
INSERT INTO clientes (id, nombre, apellido, email, create_at, foto) VALUES (20, 'Persona18', 'Fernandez', 'persona18@bolsadeideas.com', '2019-11-03','');

/*Tabla productos*/
INSERT INTO productos (nombre, precio, create_at) VALUES('Panasonic Pantalla LCD', 259990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Sony Camara digital DSC-W320B', 123490, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Apple iPod shuffle', 1499990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Sony Notebook Z110', 37990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Hewlett Packard Multifuncional F2280', 69990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 26', 69990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Mica Comoda 5 Cajones', 299990, NOW());

/*Tabla facturas*/
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura de equipos de oficina', null, 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (2, 1, 4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1, 1, 7);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura Bicicleta', '¡Alguna nota importante!', 2, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (3, 2, 6);

/* Usuarios y roles */
INSERT INTO users (username, password, enabled) VALUES ('ruben','$2a$10$XNrSmNSf7X67Uu0sjL4BFOlH/Yn4rZcM/Vx6B9FObek6XhFoJBeWG',1);
INSERT INTO users (username, password, enabled) VALUES ('admin','$2a$10$9I9wuSNdj4iUM.0jtFabUO.2f6aW/FtPIJtEvTzRGO0P2EvcvnaUm',1);

INSERT INTO authorities (user_id, authority) VALUES (1, 'ROLE_USER');
INSERT INTO authorities (user_id, authority) VALUES (2, 'ROLE_USER');
INSERT INTO authorities (user_id, authority) VALUES (2, 'ROLE_ADMIN');