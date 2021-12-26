//////////////////////////////

window.addEventListener('load',()=>{

    let boton = document.getElementById('formularioLoginA');
    let no_boletaA = document.getElementById('no_boletaA');
    let contrasena = document.getElementById('contrasena');

    function data(){
        var no_boletaA = document.getElementById('no_boletaA');
        var contrasena = document.getElementById('contrasena');
        let datos = new FormData();
        datos.append("no_boletaA",no_boletaA.value);
        datos.append("contrasena",contrasena.value);
        fetch('.././php/valida.php',{
            method: 'POST',
            body: datos
        }).then(Response => Response.text()) 
        .then(data =>{
            console.log("Valor",data);
            console.log(data==0);
            if(data == 1){
                document.forms[0].submit();
            } else {
                swal("¡ Datos Incorrectos !", "Revisa los campos, presione el boton para volver a intentar", "error"); 
                no_boletaA.classList.remove('valid');
                no_boletaA.classList.add('invalid');
                contrasena.classList.remove('valid');
                contrasena.classList.add('invalid');
                return;
            }
            console.log(data);
        });
    }

    boton.addEventListener('submit',(e) =>{
        e.preventDefault();
        data();
    });

});

//Parte de promesa

document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("no_boletaA").addEventListener('input', boletaInputA); 
  });
  
function boletaInputA(evento){
    patronBoleta=/^S{0,10}P{2,2}\d{8,8}$|^S{0,10}\d{10,10}$|^S{0,10}PE{1,1}\d{8,8}$/;
    var boleta = document.getElementById('no_boletaA');
    if(!(patronBoleta.test(boleta.value))) {
    //alert('Formato de Boleta Incorrecto');
        boleta.classList.remove('valid');
        boleta.classList.add('invalid');

    } else{
        boleta.classList.remove('invalid');
        boleta.classList.add('valid');
    }
}

document.addEventListener("DOMContentLoaded", function() {
document.getElementById("contrasena").addEventListener('input', contrasenaInput); 
});
  
function contrasenaInput(evento){
    var contrasena = document.getElementById('contrasena');
    patronContrasena=/^S{0,10}P{2,2}\d{8,8}$|^S{0,10}\d{10,10}$|^S{0,10}PE{1,1}\d{8,8}$/;
    if(!(patronContrasena.test(contrasena.value))) {
        //alert('Formato de Boleta Incorrecto');
        contrasena.classList.remove('valid');
        contrasena.classList.add('invalid');
        
    } else{
        contrasena.classList.remove('invalid');
        contrasena.classList.add('valid');
    }

}

document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("formularioLoginA").addEventListener('input', validarFormularioA); 
});

function validarFormularioA(evento) {

    var boleta = document.getElementById('no_boletaA');
    var contrasena = document.getElementById('contrasena');

    patronBoleta=/^S{0,10}P{2,2}\d{8,8}$|^S{0,10}\d{10,10}$|^S{0,10}PE{1,1}\d{8,8}$/;

  
    if(!(patronBoleta.test(boleta.value))) {
        //alert('Formato de Boleta Incorrecto');
        boleta.classList.remove('valid');
        boleta.classList.add('invalid');
    
    } else{
        boleta.classList.remove('invalid');
        boleta.classList.add('valid');
    }
    
    if(!(patronBoleta.test(contrasena.value))) {
        //alert('Formato de Boleta Incorrecto');
        contrasena.classList.remove('valid');
        contrasena.classList.add('invalid');
    
    } else{
        contrasena.classList.remove('invalid');
        contrasena.classList.add('valid');
    }
}
