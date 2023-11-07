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
  ('Cliente problematico', 'CC928277299', 'Miguel', 'Cardenas', 6)

-- Insert (5) meseros
INSERT INTO mesero(identificacion, nombre, apellido1, apellido2)
VALUES
  ('PSA73626-8','John Camilo', 'Cantillo','Smith');



-- Insert (4) platillos

-- Insert (4) bebidas

-- Insert (6) mesas

-- Insert (3) facturas