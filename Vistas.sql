
CREATE VIEW PreguntasActiv_VW
AS
SELECT 
	pregunta.Titulo, usuarios.NomUsuario, categorias.Categoria, pregunta.Descripcion, pregunta.FechDeCrea, pregunta.Imagen
FROM 
	pregunta
INNER JOIN 
	usuarios USING(ID)
INNER JOIN
	categorias using(ID)
WHERE 
	pregunta.Estado=1;
    
CREATE VIEW PreguntasBan_VW
AS
SELECT 
	pregunta.Titulo, usuarios.NomUsuario, categorias.Categoria, pregunta.Descripcion, pregunta.FechDeCrea, pregunta.Imagen
FROM 
	pregunta
INNER JOIN 
	usuarios USING(ID)
INNER JOIN
	categorias using(ID)
WHERE 
	pregunta.Estado=0;
    
CREATE VIEW PreguntasActiv_VW
AS
SELECT 
	respuesta.Respuesta, respuesta.Imagen, respuesta.Correcta, respuesta.Votos, usuarios.NomUsuario, respuesta.Estado
FROM 
	respuesta
INNER JOIN 
	usuarios USING(ID)
INNER JOIN
	categorias using(ID)
WHERE 
	respuesta.Estado=1;