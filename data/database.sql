--- tabla ciente
CREATE TABLE cliente(
  idCliente INT PRIMARY KEY,
  nombre VARCHAR(45),
  apellido VARCHAR(45),
  observaciones VARCHAR(45)
);
--- tabla mesero
CREATE TABLE mesero(
  idMesero INT,
  nombre VARCHAR(45),
  apellido1 VARCHAR(45),
  apellido2 VARCHAR(45),
  PRIMARY KEY(idMesero)
);
-- tabla platillo
CREATE TABLE platillo(
  idPlatillo INT PRIMARY KEY,
  nombre VARCHAR(45),
  importe INT
);
-- tabla bebida
CREATE TABLE bebida(
    idBebida INT PRIMARY KEY,
    nombre VARCHAR(45),
    importe INT
);
-- tabla mesa
CREATE TABLE mesa(
    id_mesa INT PRIMARY KEY,
    numComensales INT,
    ubicacion VARCHAR(45)
);

ALTER TABLE mesa RENAME id_mesa TO idMesa;

CREATE TABLE factura(
  idFactura INT PRIMARY KEY,
  fechaFactura DATE,
  numCliente INT,
  idMesero INT NOT NULL,
  idMesa INT NOT NULL,
  idPlatillo INT NOT NULL,
  idBebida INT NOT NULL,
  CONSTRAINT fk_fact_cli 
    FOREIGN KEY(numCliente) 
    REFERENCES cliente(idCliente) ON UPDATE NO ACTION ON DELETE RESTRICT,
  FOREIGN KEY(idMesero) REFERENCES mesero(idMesero) ON UPDATE RESTRICT ON DELETE RESTRICT,
  FOREIGN KEY(idMesa) REFERENCES mesa(idMesa) ON UPDATE NO ACTION ON DELETE CASCADE,
  FOREIGN KEY(idPlatillo) REFERENCES platillo(idPlatillo),
  FOREIGN KEY(idBebida) REFERENCES bebida(idBebida)
);