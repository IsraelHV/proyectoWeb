
//Se ejecuta este codigo, cuando el documento está cargado
window.addEventListener('load',()=>{

    let boton = document.getElementById('formularioLogin');
    let no_boleta = document.getElementById('no_boleta');
    let correo_electronico = document.getElementById('correo_electronico');


    // function data(){
    //     let datos = new FormData();

    //     fetch('.././php/valida.php',{
    //         method: 'POST',
    //         body: datos
    //     }).then(Response => Response.json()) 
    //     .then(data =>{
    //         console.log(data);
    //     });
    // }

    // boton.addEventListener('submit',(e) =>{
    //     e.preventDefault();
    //     data();
    // });
    

    // function data(){
    //     let datos = new FormData();
    //     datos.append("no_boleta",no_boleta.value);
    //     datos.append("correo_electronico",correo_electronico.value);
    //     fetch('.././php/valida.php',{
    //         method: 'POST',
    //         body: datos
    //     }).then(Response => Response.json()) 
    //     .then(({success}) =>{
    //         console.log(success);
    //     });
    // }

    // boton.addEventListener('submit',(e) =>{
    //     e.preventDefault();
    //     data();
    // });

    function data() {
        var boleta = document.getElementById('no_boleta');
        var correoElectronico = document.getElementById('correo_electronico');
        let datos = new FormData();
        datos.append("no_boleta",no_boleta.value);
        datos.append("correo_electronico",correo_electronico.value);
        fetch('.././php/valida.php',{
            method: 'POST',
            body: datos
        }).then(Response => Response.text()) 
        .then(data =>{
            console.log("Valor",data);
            console.log(data==0);
            if(data == 1){

                // const data = new FormData(document.getElementById('formularioLogin'));
                // fetch('.././php/datosLoginE.php', {
                //     method: 'POST',
                //     body: data
                // })
                // .then(function(response) {
                //     if(response.ok) {
                //         return response.text()
                //     } else {
                //         throw "Error en la llamada Ajax";
                //     }
                // })
                //     .then(function(texto) {
                //         console.log(texto);
                //     })
                //     .catch(function(err) {
                //     console.log(err);
                // });

                
                
                // const datos = new FormData(document.getElementById('formularioLogin'));
                // var nombre = datos.get('no_boleta');
                // alert(nombre);
                // var url=".././php/datosLoginE.php";

                // fetch(url,{
                //     method: 'POST',
                //     body: datos
                // })
                // .then (data => data.text())
                // .then (data =>{
                //     console.log('success',data); //Satisfactorio
                // })
                // .catch(function(error){
                //     console.log('error',error); //Catch
                // });

                document.forms[0].submit();
                //location.href =".././php/estudiante_DatosI.php";
                
            } else {
                swal("¡ Datos Incorrectos !", "Revisa los campos, presione el boton para volver a intentar", "error"); 
                correoElectronico.classList.remove('valid');
                correoElectronico.classList.add('invalid');
                boleta.classList.remove('valid');
                boleta.classList.add('invalid');
                return;
            }
            console.log(data);
        });
    }

    boton.addEventListener('submit',(e) =>{
        e.preventDefault();
        data();
        $(this).submit();
    });

});


//Funcion
// const formulario = document.querySelector('#formularioLogin');
// formulario.addEventListener('submit',(e) =>{
//     e.preventDefault();
//     const datos = new FormData(document.getElementById('formularioLogin'));
//     var nombre = datos.get('no_boleta');
//     alert(nombre);

// })


//Parte de promesa

document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("no_boleta").addEventListener('input', boletaInput); 
  });
  
function boletaInput(evento){
    patronBoleta=/^S{0,10}P{2,2}\d{8,8}$|^S{0,10}\d{10,10}$|^S{0,10}PE{1,1}\d{8,8}$/;
    var boleta = document.getElementById('no_boleta');
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
document.getElementById("correo_electronico").addEventListener('input', correoEInput); 
});
  
function correoEInput(evento){
    var correoElectronico = document.getElementById('correo_electronico');
    patronCorreoE = /^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$/;
    if(!(patronCorreoE.test(correoElectronico.value))) {
        //alert('Formato de Boleta Incorrecto');
        correoElectronico.classList.remove('valid');
        correoElectronico.classList.add('invalid');
        
    } else{
        correoElectronico.classList.remove('invalid');
        correoElectronico.classList.add('valid');
    }

}

document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("formularioLogin").addEventListener('input', validarFormulario); 
});

function validarFormulario(evento) {

    var boleta = document.getElementById('no_boleta');
    var correoElectronico = document.getElementById('correo_electronico');

    patronBoleta=/^S{0,10}P{2,2}\d{8,8}$|^S{0,10}\d{10,10}$|^S{0,10}PE{1,1}\d{8,8}$/;
    patronCorreoE = /^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$/;

  
    if(!(patronBoleta.test(boleta.value))) {
        //alert('Formato de Boleta Incorrecto');
        boleta.classList.remove('valid');
        boleta.classList.add('invalid');
    
    } else{
    boleta.classList.remove('invalid');
    boleta.classList.add('valid');
    }
    
    if(!(patronCorreoE.test(correoElectronico.value))) {
        //alert('Formato de Boleta Incorrecto');
        correoElectronico.classList.remove('valid');
        correoElectronico.classList.add('invalid');
    
    } else{
        correoElectronico.classList.remove('invalid');
        correoElectronico.classList.add('valid');
    }
}









    