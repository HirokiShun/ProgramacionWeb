CALL CrearUsuario_SP('Juan','Perez','1990-11-13','juanAlcachofa@gmail.com',NULL,'JAlcachof','1234',CURDATE());
CALL CrearUsuario_SP('Martin','Lopez','1997-08-16','MarLop@gmail.com',NULL,'ElMartin','1234',CURDATE());
CALL CrearUsuario_SP('Ruben','Juarez','1999-01-06','Elpro99@gmail.com',NULL,'ProMaster99','1234',CURDATE());
SELECT * FROM usuarios;

CALL AgregCat_SP('Animalitos');
SELECT * FROM categorias;

CALL Preguntar_SP('¿Que sonido hacen las vacas?',1,'como se le dice al "MUU" de las vacas',NULL,CURDATE(),1);
CALL Preguntar_SP('¿Por que me banean D:<?',1,'mugres admins corruptos',NULL,CURDATE(),1);
SELECT * FROM pregunta;

CALL Responder_SP('se le llama "mujido", saludos',NULL,1,2,1);
CALL Responder_SP('Tas feo :P',NULL,0,3,1);
SELECT * FROM respuesta;

CALL Link_RespPreg_SP(1,1);
CALL Link_RespPreg_SP(2,1);
SELECT * FROM resp_preg;

CALL Votar_SP(1,1,1); #JAlcachof voto a favor para la respuesta de ElMartin
CALL Votar_SP(1,3,0); #ProMaster99 voto en contra para la respuesta de ElMartin
SELECT * FROM votos_rel;

CALL ElPreg_SP(2);
SELECT * FROM pregunta;

CALL ElResp_SP(2);
SELECT * FROM respuesta;

CALL BanUs_SP(3);
SELECT * FROM usuarios;

#los procedures: SubImgUS, SubImgPreg y SubImgResp, aun no se pueden probar, ya que aun no se como manejar el tipo de dato BLOB