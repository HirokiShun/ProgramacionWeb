/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class Usuario{
                Constructor(PNombre,PApellido,PFecNac,PEmail,PNUser,PPass,PProfImg){
                 this.nombre=PNombre,
                 this.apellido=PApellido,
                 this.fecNac=PFecNac,
                 this.email=PEmail,
                 this.NUser=PNUser,
                 this.pass=PPass,
                 this.PImg=PProfImg
                }  
            }
            $(document).ready(function() {
			$("#regBtn").click(function(){
				var usr = new Usuario(
					$("#RegNombre").val(),
					$("#RegApellidos").val(),
					$("#RegFecNac").val(),
                                        $("#RegEmail").val(),
                                        $("#RegNUser").val(),
                                        $("#RegPass").val(),
                                        $("#RegPImg").val()
				);
                                guardar(usr);
                                 });
                function guardar(usr)
			{
				localStorage.setItem("nombre",usr.nombre);
				localStorage.setItem("apellido",usr.apellido);
				localStorage.setItem("FecNac",usr.fecNac);
                                localStorage.setItem("email",usr.email);
                                localStorage.setItem("NUser",usr.NUser);
                                localStorage.setItem("Pass",usr.pass);
                                alert("Registrado "+usr.nombre);
			}
                    });
