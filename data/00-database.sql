-- Tabla de Cursos 
---- CursoID (Clave primaria)
---- Nombre
---- Creditos
CREATE TABLE curso(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(300) NOT NULL,
    creditos INT NOT NULL
);
-- Tabla de Estudiantes
---- EstudianteID (Clave primaria)
---- Nombres
---- Apellidos
---- Edad
CREATE TABLE estudiante(
    codigo SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    apellidos VARCHAR(100)
);

-- Tabla de Inscripciones
---- InscripcionID (Clave primaria)
---- EstudianteID (Clave foránea referenciando a la tabla de Estudiantes)
---- CursoID (Clave foránea referenciando a la tabla de Cursos)
---- FechaInscripcion
CREATE TABLE inscripciones(
    id SERIAL,
    cursoID INT NOT NULL,
    estudianteID INT NOT NULL,
    fecha DATE NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(cursoID) REFERENCES curso(id),
    FOREIGN KEY(estudianteID) REFERENCES estudiante(codigo)
);