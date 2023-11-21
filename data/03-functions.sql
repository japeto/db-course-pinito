-- Cree una funcion que dado un id de estudiante
-- obtenga el numero de curso en los que esta inscrito

CREATE FUNCTION cantidad_cursos(estudianteID INT) RETURNS INT
BEGIN
	DECLARE numCursos INT;
		SELECT COUNT(ins.id) INTO numCursos
		FROM inscripciones ins
		WHERE ins.estudianteID = estudianteID
		ORDER BY ins.id;
	RETURN numCursos;
END;

-- Ejemplo de uso
--- SELECT est.nombre, cantidad_cursos(est.codigo) 
--- FROM estudiante est

-- Ejemplo de uso
--- SELECT est.codigo, est.nombre, est.apellido 
--- FROM estudiante est
--- WHERE cantidad_cursos(est.codigo)  > 3