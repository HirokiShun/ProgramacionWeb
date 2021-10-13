/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){
       $("#logBtn").click(function(){
    
        var NUser=document.getElementById("logUser").value;
        var Pass=document.getElementById("logPass").value;
        if(NUser==="Juan"&& Pass==="1234")
        {
            alert("Bienvenido Juan");
        }
        else
        {
            alert("Verificar datos");
        }
    });
 
});