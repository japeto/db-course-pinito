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
