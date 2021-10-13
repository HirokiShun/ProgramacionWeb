USE PW;
DELIMITER $$
CREATE PROCEDURE CrearUsuario_SP(
	IN NombreP VARCHAR(50), 
	IN ApellidosP VARCHAR(50), 
	IN FNaP DATE, 
	IN CorreoEP VARCHAR(30), 
    IN ImgPerfilP BLOB,
	IN NomUP VARCHAR(30),
	IN PassP VARCHAR(30),
    IN FRegP DATE
    )
    BEGIN
     IF ImgPerfilP IS NULL THEN
		INSERT INTO usuarios
        (
			Nombre,
            Apellidos,
            FechaNac,
            CorreoElec,
            NomUsuario,
            Contraseña,
            FechaReg
		)
		VALUES
			(
				NombreP,
                ApellidosP,
                FNaP,
                CorreoEP,
                NomUP,
                PassP,
                FRegP
			);
		ELSE 
			INSERT INTO usuarios
            (
				Nombre,
				Apellidos,
				FechaNac,
				CorreoElec,
                ImgPerfil,
				NomUsuario,
				Contraseña,
				FechaReg
            )
			VALUES
				(
					NombreP,
					ApellidosP,
					FNaP,
					CorreoEP,
                    ImgPerfP,
					NomUP,
					PassP,
					FRegP
				);
        END IF;
    END$$
    DELIMITER ;
#-------------------------------------------------------------------------------------------------------------------------------------------    
    DELIMITER $$
    CREATE PROCEDURE Preguntar_SP(
	IN TituloP VARCHAR(50), 
	IN CategoriaP INT, 
    IN DescripcionP VARCHAR(200), 
    IN ImgPregP BLOB,
	IN FCreaP DATE, 
	IN AutorP INT
    )
    BEGIN
     IF ImgPregP IS NULL THEN
		INSERT INTO pregunta
        (
			Titulo,
            Categoria,
            Descripcion,
            Imagen,
			FechDeCrea,
            Autor
		)
		VALUES
			(
				TituloP,
                CategoriaP,
                DescripcionP,
                ImgPregP,
                FCreaP,
                AutorP
			);
		ELSE 
			INSERT INTO pregunta
        (
			Titulo,
            Categoria,
            Descripcion,
            Imagen,
			FechaCrea,
            Autor
		)
		VALUES
			(
				TituloP,
                CategoriaP,
                DescripcionP,
                ImgPregP,
                FCreaP,
                AutorP
			);
        END IF;
    END$$
    DELIMITER ;
    #-------------------------------------------------------------------------------------------------------------------------------------------    
    DELIMITER $$
    CREATE PROCEDURE AgregCat_SP(
	IN CategoriaP VARCHAR(50) 
    )
    BEGIN
		INSERT INTO categorias
        (
			Categoria
		)
		VALUES
			(
				CategoriaP
			);
    END$$
    DELIMITER ;
#------------------------------------------------------------------------------------------------------------------------------------------- 
     DELIMITER $$
    
    CREATE PROCEDURE  Link_RespPreg_SP(
	 IN IDRespP INT,
    IN IDPregP INT
    )
    BEGIN
     INSERT INTO resp_preg
     (
		Respuesta,
        Pregunta
     )
     VALUES
     (
        IDRespP,
        IDPregP
     );
    END$$
    DELIMITER ;
#------------------------------------------------------------------------------------------------------------------------------------------- 
      DELIMITER $$
    
    CREATE PROCEDURE  Responder_SP(
	IN RespuestaP VARCHAR(500), 
    IN ImgRespP BLOB,
	IN CorrectaP TINYINT,
	IN AutorP INT,
    IN PreguntaP INT
    )
    BEGIN
     IF ImgRespP IS NULL THEN
		INSERT INTO respuesta
        (
			Respuesta,
            Correcta,
			Autor
		)
		VALUES
			(
				RespuestaP,
                CorrectaP,
                AutorP
			);
		ELSE 
			INSERT INTO respuesta
        (
			Respuesta,
            Imagen,
            Correcta,
			Autor
		)
		VALUES
			(
				RespuestaP,
                ImgRespP,
                CorrectaP,
                AutorP
			);
        END IF;
        #CALL Link_RespPreg_SP(LAST_INSERT_ID(),PreguntaP);
    END$$
    DELIMITER ;
#------------------------------------------------------------------------------------------------------------------------------------------- 
    DELIMITER $$
	CREATE PROCEDURE BanUs_SP(
		IN IDUser INT
        )
        BEGIN 
			UPDATE usuarios
			SET Estado = 0
			WHERE ID = IDUser;
        END$$
	DELIMITER ;
#------------------------------------------------------------------------------------------------------------------------------------------- 
    DELIMITER $$
	CREATE PROCEDURE ElPreg_SP
		(
			IN IDPreg INT
        )
        BEGIN 
			UPDATE pregunta
			SET Estado = 0
			WHERE ID = IDPreg;
        END$$
	DELIMITER ;
#------------------------------------------------------------------------------------------------------------------------------------------- 
     DELIMITER $$
	CREATE PROCEDURE ElResp_SP
		(
			IN IDResp INT
        )
        BEGIN 
			UPDATE respuesta
			SET Estado = 0
			WHERE ID = IDResp;
        END$$
	DELIMITER ;
 #-------------------------------------------------------------------------------------------------------------------------------------------   
    DELIMITER $$
	CREATE PROCEDURE Votar_SP
		(
			IN IDResp INT,
            IN IDUser INT,
            IN Fav_Cont TINYINT
        )
        BEGIN 
			INSERT INTO votos_rel
            (
				Respuesta,
                Votante,
                Voto
            )
            VALUES
            (
				IDResp,
                IDUser,
                Fav_Cont
            );
        END$$
	DELIMITER ;
#-------------------------------------------------------------------------------------------------------------------------------------------
  DELIMITER $$
	CREATE PROCEDURE SubImgUs_SP
		(
			IN IDUser INT,
            IN ImgArch BLOB
        )
        BEGIN 
			UPDATE usuarios
			SET ImgPerfil = ImgArch
			WHERE ID = IDUser;
        END$$
	DELIMITER ; 
#-------------------------------------------------------------------------------------------------------------------------------------------
  DELIMITER $$
	CREATE PROCEDURE SubImgPreg_SP
		(
			IN IDPreg INT,
            IN ImgArch BLOB
        )
        BEGIN 
			UPDATE pregunta
			SET Imagen = ImgArch
			WHERE ID = IDPreg;
        END$$
	DELIMITER ; 
#-------------------------------------------------------------------------------------------------------------------------------------------
  DELIMITER $$
	CREATE PROCEDURE SubImgResp_SP
		(
			IN IDResp INT,
            IN ImgArch BLOB
        )
        BEGIN 
			UPDATE respuesta
			SET Imagen = ImgArch
			WHERE ID = IDPreg;
        END$$
	DELIMITER ; 
    
#-------------------------------------------------------------------------------------------------------------------------------------------
  DELIMITER $$
    CREATE PROCEDURE GetAnswerByID(
		IN AnswID INT
    )
BEGIN
		SELECT 
		respuesta.Respuesta, respuesta.Imagen, respuesta.Correcta, respuesta.Votos, respuesta.Autor, respuesta.Estado
		FROM 
		respuesta
		WHERE 
		respuesta.Estado=1;
    END$$
    DELIMITER ;
#-------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
  CREATE PROCEDURE GetQuestions_SP()
BEGIN
		 SELECT 
		pregunta.ID, pregunta.Titulo, pregunta.Autor, pregunta.Categoria, pregunta.Descripcion, pregunta.FechDeCrea, pregunta.Imagen
		FROM 
		pregunta
		WHERE 
		pregunta.Estado=1;
    END$$
DELIMITER ;
#-------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
  CREATE PROCEDURE GetAnswers_SP()
BEGIN 
		SELECT 
		respuesta.ID, respuesta.Respuesta, respuesta.Imagen, respuesta.Correcta, respuesta.Votos, respuesta.Autor, respuesta.Estado
		FROM 
		respuesta
		WHERE 
		respuesta.Estado=1;
    END
DELIMITER ;
#-------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
  CREATE PROCEDURE GetCategories_SP()
BEGIN
	SELECT categorias.ID,categorias.Categoria FROM categorias;
END
DELIMITER ;
#-------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
  CREATE PROCEDURE GetQuestByID(
		IN QuestID INT
    )
BEGIN
        SELECT 
		pregunta.ID, pregunta.Titulo, pregunta.Autor, pregunta.Categoria, pregunta.Descripcion, pregunta.FechDeCrea, pregunta.Imagen
		FROM 
		pregunta
		WHERE 
		pregunta.ID=QuestID;
END$$
DELIMITER ;
#-------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
  CREATE PROCEDURE ValidateUser_SP(
		IN NUser VARCHAR(30),
        IN PassW VARCHAR(30)
    )
BEGIN
		SELECT NomUsuario, Contraseña 
        FROM usuarios
		WHERE NomUsuario = NUser AND Contraseña = PassW;
    END
DELIMITER ;
#-------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
  CREATE PROCEDURE GetUserByID(
		IN UsrID INT
    )
BEGIN
		SELECT ID, Nombre, Apellidos, FechaNac, CorreoElec, ImgPerfil, NomUsuario, Contraseña, FechaReg, Estado
		FROM usuarios
		WHERE ID= UsrID;
    END
DELIMITER ;
#-------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
  
DELIMITER ;
#-------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER $$
  
DELIMITER ;
    