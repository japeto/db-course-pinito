-- Cree un disparador que impida que un estudiante
-- se inscriba a mas cursos 
-- si ya tiene inscrito  20 creditos
CREATE FUNCTION valide_creditos()
RETURNS TRIGGER AS $$
DECLARE 
	creditos_inscritos INT;
	creditos_inscribir INT;
BEGIN
 	-- Obtener la cantidad de creditos que tiene el estudiante
	SELECT SUM(cu.creditos) INTO creditos_inscritos
	FROM cursos cu
	WHERE cu.id IN (
		SELECT cursoid
		FROM inscripciones
		WHERE estudianteid = NEW.estudianteid
	)
	
	SELECT cc.creditos INTO creditos_inscribir
	FROM cursos cc
	WHERE cc.id = NEW.cursoid
	
	-- Validar que no sean más de 20
	IF creditos_inscribir + creditos_inscritos > 20 THEN
		RAISE EXECEPTION 'EL estudiante supera la cantidad de creditos permitidos.'
	END IF;
END;
$$ LANGUAGE plpgsql;

-- SE VINCULA EL DISPARADOR A LA 
-- TABLA INSCRIPCIONES
CREATE TRIGGER disparador_20creditos
BEFORE INSERT ON inscripciones
FOR EACH ROW
EXECUTE FUNCTION valide_creditos();


