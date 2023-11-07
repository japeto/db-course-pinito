-- Insert (5) clientes
INSERT INTO cliente(idCliente, identificacion, nombre, apellido, observaciones)
VALUES
  (1, 'CC1143928282','Andres', 'Perez', 'ninguna'),
  (2, 'CC16736266','Manuela', 'Perez', 'ninguna'),
  (3, 'PSA32726-4','Carmen', 'Caicedo', 'ninguna'),
  (4, 'TI92828','Diomedez', 'Ramirez', 'ninguna');

INSERT INTO cliente
VALUES (5, 'PSAM36265-2','Andres', 'Perez', 'ninguna');

INSERT INTO cliente(observaciones, identificacion, nombre, apellido, idCliente)
VALUES
  ('Cliente problematico', 'CC928277299', 'Miguel', 'Cardenas', 6);

-- Insert (5) meseros
INSERT INTO mesero(identificacion, nombre, apellido1, apellido2)
VALUES
  ('PSA73626-8','John Camilo', 'Cantillo','Smith');

INSERT INTO mesero
VALUES
    ('CC852147','Juan','Perez','Jimenez')
    ('TI326598','Alberto','Gonzales','Blanco')
    ('CC741258','María','Viera','Castro')
    ('CC1346798','Óscar','Pardo','Naranjo')
    ('TI951753','Ana','Cabrera','Pantoja')

-- Insert (4) platillos
INSERT INTO platillo (nombre, importe)
VALUES
  ('Filete de res', 15000),
  ('Filete de cerdo', 15000),
  ('Filete de pescado', 15000),
  ('Salmón a la parrilla', 18000),
  ('Pizza Margarita', 12000),
  ('Espagueti Alfredo', 10000);

-- Insert (4) bebidas
INSERT INTO bebida (idBebida, nombre, importe)
VALUES
  (1, 'Agua mineral', 3000),
  (2, 'Coca-cola', 2500),
  (3, 'Vino tinto', 12000),
  (4, 'Cerveza artesanal', 5500);

-- Insert (6) mesas
INSERT INTO mesa (id_mesa, numComensales, ubicacion)
VALUES
  (1, 4, 'Ventana'),
  (2, 6, 'Terraza'),
  (3, 2, 'Interior'),
  (4, 8, 'Jardín'),
  (5, 5, 'Bar'),
  (6, 6, 'Barra'),
  (7, 4, 'Ventana'),
  (8, 4, 'Ventana'),
  (9, 3, 'Terraza'),
  (9, 2, 'Terraza'),
  (10, 2, 'Barra');

-- Insert (3) facturas
INSERT INTO factura 
VALUES 
    (1, '2023-11-07', 1, 3, 3, 2, 1)
    (2, '2022-05-27', 5, 3, 4, 1, 1)
    (3, '2023-11-01', 3, 3, 2, 3, 1);
