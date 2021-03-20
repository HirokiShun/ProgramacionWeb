CREATE DATABASE IF NOT EXISTS PW;
USE PW;

CREATE TABLE IF NOT EXISTS Usuarios
	(
		ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
		Nombre VARCHAR(50),
        Apellidos VARCHAR(50),
        FechaNac DATE,
        CorreoElec VARCHAR(30),
        ImgPerfil BLOB,
        NomUsuario VARCHAR(30),
        Contraseña VARCHAR(30),
        FechaReg DATE,
        Estado TINYINT
	);
    
    CREATE TABLE IF NOT EXISTS Categorias
	(
		ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        Categoria VARCHAR(30)
	);
    
CREATE TABLE IF NOT EXISTS Pregunta
	(
		ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        Titulo VARCHAR(50),
        Categoria INT UNSIGNED NOT NULL,
        Descripcion VARCHAR(200),
        Imagen BLOB,
        FechDeCrea DATE,
        Autor INT UNSIGNED,
        FOREIGN KEY(Categoria) REFERENCES Categorias(ID),
        FOREIGN KEY(Autor) REFERENCES Usuarios(ID)
	);

CREATE TABLE IF NOT EXISTS Respuesta
	(
		ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        Respuesta VARCHAR(500),
        Imagen BLOB,
        Correcta TINYINT,
        Autor INT UNSIGNED,
        Votos INT,
        FOREIGN KEY(Autor) REFERENCES Usuarios(ID)
    );

CREATE TABLE IF NOT EXISTS Resp_Preg
	(
		ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        Respuesta INT UNSIGNED,
        Pregunta INT UNSIGNED,
        FOREIGN KEY(Respuesta) REFERENCES Respuesta(ID),
        FOREIGN KEY(Pregunta)  REFERENCES Pregunta(ID)
    );

CREATE TABLE IF NOT EXISTS Votos_Rel
	(
		ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        Respuesta INT UNSIGNED,
        Votante INT UNSIGNED,
        Voto TINYINT,
        FOREIGN KEY(Respuesta) REFERENCES Respuesta(ID),
        FOREIGN KEY(Votante) REFERENCES Usuarios(ID)
    );