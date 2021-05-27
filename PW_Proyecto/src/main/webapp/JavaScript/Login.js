$(document).ready(function(){
    $("#loginForm").submit(function(event){
        event.preventDefault();
        
        $.ajax({
            data:$(this).serialize(),
            type: "POST",
            dataType: "json",
            url: "Login"
        }).done(function(data, textEstado, jqXHR){
            console.log("La solicitud se envio correctamente");
            
            if(data.Respuesta){
                alert("Usuario valido");
                location.reload();
            }
            else{
                alert("Usuario no valido");
            }
        }).fail(function(jqXHR, textEstatus){
            console.log("algo salio mal por: " + textEstatus);
        });
    });
});

