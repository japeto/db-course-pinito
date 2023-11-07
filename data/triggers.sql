-- durante la insercion en detalle
-- actualiza el monto en factura

CREATE OR REPLACE FUNCTION actualizar_monto_factura()
RETURNS TRIGGER AS $$
BEGIN
  -- Calcular el nuevo monto de la factura
  UPDATE factura
    SET monto = (
                SELECT SUM (pl.importe + bb.importe) FROM detalle dt
                JOIN platillo pl ON dt.idPlatillo = pl.idPlatillo
                JOIN bebida bb ON dt.idBebida = bb.idBebida
                WHERE idFactura = NEW.idFactura
                )
  WHERE idFactura = NEW.idFactura
  RETURN NEW;
END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_monto_factura
AFTER INSERT ON detalle
FOR EACH ROW
  EXECUTE FUNCTION actualizar_monto_factura();