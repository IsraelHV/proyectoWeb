$(document).ready(function(){
    $('.modal').modal();
    $('.dropdown-trigger').dropdown();
  });

  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.datepicker');
    var instances = M.Datepicker.init(elems, options);
  });

  // Or with jQuery

  $(document).ready(function(){
    $('.datepicker').datepicker();
  });  


  //Calendario --> Buscar // internationalization


  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems, options);
  });

  // Or with jQuery

  $(document).ready(function(){
    $('select').formSelect();
  });



$("input[type='reset']").on('click', function(){
    this.form.reset(); // forcing reset event
    Materialize.updateTextFields(); //updating labels from inputs
});

function clearFocus(){
   Materialize.updateTextFields();
}

/*Ejemplo de utilizar clarFocus
<button class="btn waves-effect waves-light" type="reset" onclick="clearFocus();">
   Reset
</button>
*/


//Funcion que costo Xd
$(document).ready(function(){
 
  $('.modal').modal({
      dismissible: false, // Modal cannot be closed by clicking anywhere outside
    }
  );
 })


 document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.sidenav');
  var instances = M.Sidenav.init(elems, options);
});

// Initialize collapsible (uncomment the lines below if you use the dropdown variation)
// var collapsibleElem = document.querySelector('.collapsible');
// var collapsibleInstance = M.Collapsible.init(collapsibleElem, options);

// Or with jQuery

document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.sidenav');
  var instances = M.Sidenav.init(elems, options);
});

// Initialize collapsible (uncomment the lines below if you use the dropdown variation)
// var collapsibleElem = document.querySelector('.collapsible');
// var collapsibleInstance = M.Collapsible.init(collapsibleElem, options);

// Or with jQuery

$(document).ready(function(){
  $('.sidenav').sidenav();
});

document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.collapsible');
  var instances = M.Collapsible.init(elems, options);
});

// Or with jQuery

$(document).ready(function(){
  $('.collapsible').collapsible();
});
  

$(function () {
  $('#search').quicksearch('table tbody tr');								
});

// captura el evento keyup cuando escribes en el input
$("#search").keyup(function(){
    _this = this;
    // Muestra los tr que concuerdan con la busqueda, y oculta los demás.
    $.each($("#table tbody tr"), function() {
        if($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1)
           $(this).hide();
        else
           $(this).show();                
    });
}); 

///////////////////////////////////////////////////////////////////////
/*Funcion del onclik*/

function validarFormulario(){

  var boleta = document.getElementById('no_boleta');
  var nombre = document.getElementById('nombre');
  var apellidoPaterno = document.getElementById('apellido_Paterno');
  var apellidoMaterno = document.getElementById('apellido_Materno');
  var fecha = document.getElementById('fecha_nacimiento');
  var CURP = document.getElementById('curp');
  var numero = document.getElementById('numero');
  var calle = document.getElementById('calle');
  var colonia = document.getElementById('colonia');
  var alcaldia = document.getElementById('alcaldia');
  var codigoPostal = document.getElementById('codigo_postal');
  var telefono = document.getElementById('telefono_celular');
  var correoElectronico = document.getElementById('correo_electronico');
  var escuelaP = document.getElementById('escuelaP');
  var escuelaProcedencia = document.getElementById('escuela_procedencia');
  var entidad = document.getElementById('entidad');
  var promedio = document.getElementById('promedio');

  /*Expresiones Regulares*/
  patronBoleta=/^S{0,10}P{2,2}\d{8,8}$|^S{0,10}\d{10,10}$|^S{0,10}PE{1,1}\d{8,8}$/;
  patronTexto=/^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$/;
  patronFecha=/^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})$/;
  patronCURP=/^[A-Z]{1}[AEIOU]{1}[A-Z]{2}[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])[HM]{1}(AS|BC|BS|CC|CS|CH|CL|CM|DF|DG|GT|GR|HG|JC|MC|MN|MS|NT|NL|OC|PL|QT|QR|SP|SL|SR|TC|TS|TL|VZ|YN|ZS|NE)[B-DF-HJ-NP-TV-Z]{3}[0-9A-Z]{1}[0-9]{1}$/
  patronNumero=/^S{0,10}\d{1,10}$/;
  patronCodigoPostal=/^S{0,10}\d{5,5}$/;
  patronTelefono=/^S{0,10}\d{10,10}$/;
  //patronCorreoE = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/
  patronCorreoE = /^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$/;
  patronpromedio =/^[0-9]{1}[.]{1}[0-9]{1}[0-9]{0,1}$|^[1]{1}[0]{1}$|^[0-9]{1}$/;

  patronCalle=/^[a-zA-Z0-9À-ÿ\u00f1\u00d1]+(\s*[a-zA-Z0-9À-ÿ\u00f1\u00d1]*)*[a-zA-Z0-9À-ÿ\u00f1\u00d1]+$/;

  //patronBoleta=/^P{2,2}\d{8,8}$|^\d{10,10}$|^PE{1,1}\d{8,8}$/;

  if(!(patronBoleta.test(boleta.value))) {

    swal("¡ Boleta Incorrecta !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronTexto.test(nombre.value))) {
    swal("¡ Nombre Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronTexto.test(apellidoPaterno.value))) {
    swal("¡ Apellido Paterno Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronTexto.test(apellidoMaterno.value))) {
    swal("¡ Apellido Materno Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronFecha.test(fecha.value))) {
    swal("¡ Fecha de Nacimiento Incorrecta !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronCURP.test(CURP.value))) {
    swal("¡ CURP Incorrecta !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronCalle.test(calle.value))) {
    swal("¡ Calle Incorrecta !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(!(patronNumero.test(numero.value))) {
    swal("¡ Número Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(!(patronCalle.test(colonia.value))) {
    swal("¡ Colonia Incorrecta !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(alcaldia.value==0) {
    swal("¡ Alcaldía Incorrecta !", "Debe seleccionar Alcaldía, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(!(patronCodigoPostal.test(codigoPostal.value))) {
    swal("¡ Código Postal Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(!(patronTelefono.test(telefono.value))) {
    swal("¡ Teléfono Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronCorreoE.test(correoElectronico.value))) {
    swal("¡ Correo Electrónico Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(escuelaP.value==0) {
    swal("¡ Escuela de Procedencia Incorrecta !", "Debe seleccionar Escuela de Procedencia, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(escuelaProcedencia.disabled == false){
    if(escuelaProcedencia.value==0){
      swal("¡ Escuela de Procedencia Incorrecta !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
      return;
    }
  }

  if(entidad.value==0) {
    swal("¡ Entidad Federativa Incorrecta !", "Debe seleccionar Entidad Federativa, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(!(patronpromedio.test(promedio.value))) {
    swal("¡ Promedio Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  } 

  swal("¡ Formulario completado !", "Datos Correctos, presione el boton para continuar", "success"); 
  
  setTimeout(function(){
    console.log("Esperando");
  },5000);

  /*Empieza los bueno*/

  if(escuelaProcedencia.disabled == false){

    dato=({'boleta':boleta.value,'nombre':nombre.value,'apellidoPaterno':apellidoPaterno.value,'apellidoMaterno':apellidoMaterno.value,
    'fecha':fecha.value,'CURP':CURP.value,'numero':numero.value,'calle':calle.value,'colonia':colonia.value,'alcaldia':alcaldia.value,'codigoPostal':codigoPostal.value,
    'telefono':telefono.value,'correoElectronico':correoElectronico.value,'escuelaP':escuelaP.value,'escuelaProcedencia':escuelaProcedencia.value,
    'entidad':entidad.value,'promedio':promedio.value});
    escribirCEP(dato);

  } else{
    dato=({'boleta':boleta.value,'nombre':nombre.value,'apellidoPaterno':apellidoPaterno.value,'apellidoMaterno':apellidoMaterno.value,
    'fecha':fecha.value,'CURP':CURP.value,'numero':numero.value,'calle':calle.value,'colonia':colonia.value,'alcaldia':alcaldia.value,'codigoPostal':codigoPostal.value,
    'telefono':telefono.value,'correoElectronico':correoElectronico.value,'escuelaP':escuelaP.value,'entidad':entidad.value,'promedio':promedio.value});
    escribir(dato);
  }

  

}


let activoFijo = $('input[name="genero"]:checked').val();
console.log(activoFijo);

let texto = $('input:radio[name="genero"]:checked').parent().find(".item-title").text();
console.log(texto);

let idAlcaldia=document.getElementById("alcaldia");
var alcaldia = idAlcaldia.options[idAlcaldia.selectedIndex].text;
console.log(alcaldia);

function escribirCEP(dato){

  let genero = $('input:radio[name="genero"]:checked').parent().find(".item-title").text();
  
  let idAlcaldia=document.getElementById("alcaldia");
  var alcaldia = idAlcaldia.options[idAlcaldia.selectedIndex].text;

  let idEscuela=document.getElementById("escuelaP");
  var escuela = idEscuela.options[idEscuela.selectedIndex].text;

  let idEntidad=document.getElementById("entidad");
  var entidad = idEntidad.options[idEntidad.selectedIndex].text;

  let opcion = $('input:radio[name="opcion"]:checked').parent().find(".item-title").text();

  const itemHTML=
            '<div class="col s12 center">'+
              '<h4>¿ Desea realizar algún cambio antes de enviar su información ?</h4>'+
              '<table class="highlight centered responsive-table">'+
                '<thead>'+
                  '<tr>'+
                    '<th>Datos Solicitados</th>'+
                    '<th>Datos Ingresados</th>'+         
                  '</tr>'+
                '</thead>'+
  
                '<tbody>'+

                  '<tr>'+
                    '<th>No. de Boleta:</th>'+
                    '<th>'+dato.boleta+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Nombre:</th>'+
                    '<th>'+dato.nombre+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Apellido Paterno:</th>'+
                    '<th>'+dato.apellidoPaterno+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Apellido Materno:</th>'+
                    '<th>'+dato.apellidoMaterno+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Fecha de Nacimiento:</th>'+
                    '<th>'+dato.fecha+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Género:</th>'+
                    '<th>'+genero+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>CURP:</th>'+
                    '<th>'+dato.CURP+'</th>'+
                  '</tr>'+



                  '<tr>'+
                    '<th>Calle:</th>'+
                    '<th>'+dato.calle+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Número:</th>'+
                    '<th>'+dato.numero+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Colonia:</th>'+
                    '<th>'+dato.colonia+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Alcaldía:</th>'+
                    '<th>'+alcaldia+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Código Postal:</th>'+
                    '<th>'+dato.codigoPostal+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Teléfono Celular:</th>'+
                    '<th>'+dato.telefono+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Correo Electrónico:</th>'+
                    '<th>'+dato.correoElectronico+'</th>'+
                  '</tr>'+



                  '<tr>'+
                    '<th>Escuela:</th>'+
                    '<th>'+escuela+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Nombre de la Escuela:</th>'+
                    '<th>'+dato.escuelaProcedencia+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Entidad:</th>'+
                    '<th>'+entidad+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Promedio:</th>'+
                    '<th>'+dato.promedio+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>ESCOM fue:</th>'+   
                    '<th>'+opcion+'</th>'+
                  '</tr>'+

                '</tbody>'+

              '</table>'+
            '</div>';
  
    
  const itemsContainer = document.getElementById("contentModal1");
  itemsContainer.innerHTML = itemHTML;
             
}

function escribir(dato){

  let genero = $('input:radio[name="genero"]:checked').parent().find(".item-title").text();
  
  let idAlcaldia=document.getElementById("alcaldia");
  var alcaldia = idAlcaldia.options[idAlcaldia.selectedIndex].text;

  let idEscuela=document.getElementById("escuelaP");
  var escuela = idEscuela.options[idEscuela.selectedIndex].text;

  let idEntidad=document.getElementById("entidad");
  var entidad = idEntidad.options[idEntidad.selectedIndex].text;

  let opcion = $('input:radio[name="opcion"]:checked').parent().find(".item-title").text();

  const itemHTML=
            '<div class="col s12 center">'+
              '<h4>¿ Desea realizar algún cambio antes de enviar su información ?</h4>'+
              '<table class="highlight centered responsive-table">'+
                '<thead>'+
                  '<tr>'+
                    '<th>Datos Solicitados</th>'+
                    '<th>Datos Ingresados</th>'+         
                  '</tr>'+
                '</thead>'+
  
                '<tbody>'+

                  '<tr>'+
                    '<th>No. de Boleta:</th>'+
                    '<th>'+dato.boleta+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Nombre:</th>'+
                    '<th>'+dato.nombre+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Apellido Paterno:</th>'+
                    '<th>'+dato.apellidoPaterno+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Apellido Materno:</th>'+
                    '<th>'+dato.apellidoMaterno+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Fecha de Nacimiento:</th>'+
                    '<th>'+dato.fecha+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Género:</th>'+
                    '<th>'+genero+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>CURP:</th>'+
                    '<th>'+dato.CURP+'</th>'+
                  '</tr>'+



                  '<tr>'+
                    '<th>Calle:</th>'+
                    '<th>'+dato.calle+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Número:</th>'+
                    '<th>'+dato.numero+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Colonia:</th>'+
                    '<th>'+dato.colonia+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Alcaldía:</th>'+
                    '<th>'+alcaldia+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Código Postal:</th>'+
                    '<th>'+dato.codigoPostal+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Teléfono Celular:</th>'+
                    '<th>'+dato.telefono+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Correo Electrónico:</th>'+
                    '<th>'+dato.correoElectronico+'</th>'+
                  '</tr>'+



                  '<tr>'+
                    '<th>Escuela:</th>'+
                    '<th>'+escuela+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Entidad:</th>'+
                    '<th>'+entidad+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>Promedio:</th>'+
                    '<th>'+dato.promedio+'</th>'+
                  '</tr>'+

                  '<tr>'+
                    '<th>ESCOM fue:</th>'+   
                    '<th>'+opcion+'</th>'+
                  '</tr>'+

                '</tbody>'+

              '</table>'+
            '</div>';
  
    
  const itemsContainer = document.getElementById("contentModal1");
  itemsContainer.innerHTML = itemHTML;
             
}




// function addItem(item){
//   const itemHTML = '<div class="col-sm-6 col-md-4 col-lg-3 col-xl-3"> <div class="card" style="width: 18rem;">\n' +
//       '    <img src="'+item.img +'" class="card-img-top" alt="image" style="width: 250px; height: 250px; margin: auto;">\n' +
//       '    <div class="card-body ">\n' +
//       '        <h5 class="card-title">'+item.name+'</h5>\n' +
//       '        <p class="card-text">'+item.description+'</p>\n' +
//       '        <a href="#" class="btn btn-primary">Más información</a>\n' +
//       '    </div>\n' +
//       '</div></div>\n' +
//       '<br/>';
//   const itemsContainer = document.getElementById("list-items");
//   itemsContainer.innerHTML += itemHTML;
// }


// addItem({'name':'Tamal',
//     'img':'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/22pTa=',
//     'description':'Lo mejor'});




//Se empiezan a hacer las validaciones

document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("formulario").addEventListener('input', validarBoleta); 
});

function validarBoleta(evento) {

  var boleta = document.getElementById('no_boleta');
  var nombre = document.getElementById('nombre');
  var apellidoPaterno = document.getElementById('apellido_Paterno');
  var apellidoMaterno = document.getElementById('apellido_Materno');
  var fecha = document.getElementById('fecha_nacimiento');
  var CURP = document.getElementById('curp');
  var calle = document.getElementById('calle');
  var numero = document.getElementById('numero');
  var colonia = document.getElementById('colonia');
  var codigoPostal = document.getElementById('codigo_postal');
  var telefono = document.getElementById('telefono_celular');
  var correoElectronico = document.getElementById('correo_electronico');
  var escuelaProcedencia = document.getElementById('escuela_procedencia');
  var promedio = document.getElementById('promedio');

  console.log(boleta);
  console.log(nombre);
  console.log(numero);

  /*Expresiones Regulares*/
  patronBoleta=/^S{0,10}P{2,2}\d{8,8}$|^S{0,10}\d{10,10}$|^S{0,10}PE{1,1}\d{8,8}$/;
  patronTexto=/^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$/;
  patronFecha=/^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})$/;
  patronCURP=/^[A-Z]{1}[AEIOU]{1}[A-Z]{2}[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])[HM]{1}(AS|BC|BS|CC|CS|CH|CL|CM|DF|DG|GT|GR|HG|JC|MC|MN|MS|NT|NL|OC|PL|QT|QR|SP|SL|SR|TC|TS|TL|VZ|YN|ZS|NE)[B-DF-HJ-NP-TV-Z]{3}[0-9A-Z]{1}[0-9]{1}$/;
  //patronCalle=/^[0-9a-zA-Z]+$/;
  patronNumero=/^S{0,10}\d{1,10}$/;
  patronCodigoPostal=/^S{0,10}\d{5,5}$/;
  patronTelefono=/^S{0,10}\d{10,10}$/;
  //patronCorreoE = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/
  patronCorreoE = /^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$/;
  patronpromedio =/^[0-9]{1}[.]{1}[0-9]{1}[0-9]{0,1}$|^[1]{1}[0]{1}$|^[0-9]{1}$/;
  //patronNumero=/^[Mm]{1,1}[Zz]{1,1}\s{1,2}(.)\s{1,2}\d{1,10}\s{1,2}[Ll]{1}[Tt]{1}\s{1,2}(.)\s{1,2}\d{1,10}$|^\d{1,10}$/;
  //patronBoleta=/^P{2,2}\d{8,8}$|^\d{10,10}$|^PE{1,1}\d{8,8}$/;
  patronCalle=/^[a-zA-Z0-9À-ÿ\u00f1\u00d1]+(\s*[a-zA-Z0-9À-ÿ\u00f1\u00d1]*)*[a-zA-Z0-9À-ÿ\u00f1\u00d1]+$/;



  if(!(patronBoleta.test(boleta.value))) {
    //alert('Formato de Boleta Incorrecto');
    boleta.classList.remove('valid');
    boleta.classList.add('invalid');

  } else{
    boleta.classList.remove('invalid');
    boleta.classList.add('valid');
  }
  // var clave = document.getElementById('clave').value;
  // if (clave.length < 6) {
  //   alert('La clave no es válida');
  //   return;
  // }
  if(!(patronTexto.test(nombre.value))) {
    //alert('Formato de Boleta Incorrecto');
    nombre.classList.remove('valid');
    nombre.classList.add('invalid');
    
  } else{
    nombre.classList.remove('invalid');
    nombre.classList.add('valid');
  }

  if(!(patronTexto.test(apellidoPaterno.value))) {
    //alert('Formato de Boleta Incorrecto');
    apellidoPaterno.classList.remove('valid');
    apellidoPaterno.classList.add('invalid');
    
  } else{
    apellidoPaterno.classList.remove('invalid');
    apellidoPaterno.classList.add('valid');
  }

  if(!(patronTexto.test(apellidoMaterno.value))) {
    //alert('Formato de Boleta Incorrecto');
    apellidoMaterno.classList.remove('valid');
    apellidoMaterno.classList.add('invalid');
    
  } else{
    apellidoMaterno.classList.remove('invalid');
    apellidoMaterno.classList.add('valid');
  }

  if(!(patronFecha.test(fecha.value))) {
    //alert('Formato de Boleta Incorrecto');
    fecha.classList.remove('valid');
    fecha.classList.add('invalid');
    
  } else{
    fecha.classList.remove('invalid');
    fecha.classList.add('valid');
  }

  if(!(patronCURP.test(CURP.value))) {
    //alert('Formato de Boleta Incorrecto');
    CURP.classList.remove('valid');
    CURP.classList.add('invalid');
    
  } else{
    CURP.classList.remove('invalid');
    CURP.classList.add('valid');
  }

  if(!(patronCalle.test(calle.value))) {
    //alert('Formato de Boleta Incorrecto');
    calle.classList.remove('valid');
    calle.classList.add('invalid');
    
  } else{
    calle.classList.remove('invalid');
    calle.classList.add('valid');
  }

  if(!(patronNumero.test(numero.value))) {
    //alert('Formato de Boleta Incorrecto');
    numero.classList.remove('valid');
    numero.classList.add('invalid');
    
  } else{
    numero.classList.remove('invalid');
    numero.classList.add('valid');
  }

  if(!(patronCalle.test(colonia.value))) {
    //alert('Formato de Boleta Incorrecto');
    colonia.classList.remove('valid');
    colonia.classList.add('invalid');
    
  } else{
    colonia.classList.remove('invalid');
    colonia.classList.add('valid');
  }

  if(!(patronCodigoPostal.test(codigoPostal.value))) {
    //alert('Formato de Boleta Incorrecto');
    codigoPostal.classList.remove('valid');
    codigoPostal.classList.add('invalid');
    
  } else{
    codigoPostal.classList.remove('invalid');
    codigoPostal.classList.add('valid');
  }

  if(!(patronTelefono.test(telefono.value))) {
    //alert('Formato de Boleta Incorrecto');
    telefono.classList.remove('valid');
    telefono.classList.add('invalid');
    
  } else{
    telefono.classList.remove('invalid');
    telefono.classList.add('valid');
  }

  if(!(patronCorreoE.test(correoElectronico.value))) {
    //alert('Formato de Boleta Incorrecto');
    correoElectronico.classList.remove('valid');
    correoElectronico.classList.add('invalid');
    
  } else{
    correoElectronico.classList.remove('invalid');
    correoElectronico.classList.add('valid');
  }

  if(escuelaProcedencia.disabled == false){
    if(escuelaProcedencia.value==0){
      escuelaProcedencia.classList.remove('valid');
      escuelaProcedencia.classList.add('invalid');
    } else{
      escuelaProcedencia.classList.remove('invalid');
      escuelaProcedencia.classList.add('valid');
    }
  }

  if(!(patronpromedio.test(promedio.value))) {
    //alert('Formato de Boleta Incorrecto');
    promedio.classList.remove('valid');
    promedio.classList.add('invalid');
    
  } else{
    promedio.classList.remove('invalid');
    promedio.classList.add('valid');
  }
  
}

/////////////////////////////////////////////////
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



/////////////////////////////////////////////////
document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("nombre").addEventListener('input', nombreInput); 
});

function nombreInput(evento){
  var nombre = document.getElementById('nombre');
  patronTexto=/^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$/;
  if(!(patronTexto.test(nombre.value))) {
    //alert('Formato de Boleta Incorrecto');
    nombre.classList.remove('valid');
    nombre.classList.add('invalid');
    
  } else{
    nombre.classList.remove('invalid');
    nombre.classList.add('valid');
  }


}


/////////////////////////////////////////////////
document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("apellido_Paterno").addEventListener('input', apellidoPInput); 
});

function apellidoPInput(evento){
  var apellidoPaterno = document.getElementById('apellido_Paterno');
  patronTexto=/^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$/;
  if(!(patronTexto.test(apellidoPaterno.value))) {
    //alert('Formato de Boleta Incorrecto');
    apellidoPaterno.classList.remove('valid');
    apellidoPaterno.classList.add('invalid');
    
  } else{
    apellidoPaterno.classList.remove('invalid');
    apellidoPaterno.classList.add('valid');
  }


}

/////////////////////////////////////////////////
document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("apellido_Materno").addEventListener('input', promedioAMaterno); 
});

function promedioAMaterno(evento){
  var apellidoMaterno = document.getElementById('apellido_Materno');
  patronTexto=/^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$/;
  if(!(patronTexto.test(apellidoMaterno.value))) {
    //alert('Formato de Boleta Incorrecto');
    apellidoMaterno.classList.remove('valid');
    apellidoMaterno.classList.add('invalid');
    
  } else{
    apellidoMaterno.classList.remove('invalid');
    apellidoMaterno.classList.add('valid');
  }

}

/////////////////////////////////////////////////
document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("fecha_nacimiento").addEventListener('input', fechaNInput); 
});

function fechaNInput(evento){
  var fecha = document.getElementById('fecha_nacimiento');
  patronFecha=/^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})$/;
  if(!(patronFecha.test(fecha.value))) {
    //alert('Formato de Boleta Incorrecto');
    fecha.classList.remove('valid');
    fecha.classList.add('invalid');
    
  } else{
    fecha.classList.remove('invalid');
    fecha.classList.add('valid');
  }

  
}


/////////////////////////////////////////////////
document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("curp").addEventListener('input', curpInput); 
});

function curpInput(evento){
  var CURP = document.getElementById('curp');
  patronCURP=/^[A-Z]{1}[AEIOU]{1}[A-Z]{2}[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])[HM]{1}(AS|BC|BS|CC|CS|CH|CL|CM|DF|DG|GT|GR|HG|JC|MC|MN|MS|NT|NL|OC|PL|QT|QR|SP|SL|SR|TC|TS|TL|VZ|YN|ZS|NE)[B-DF-HJ-NP-TV-Z]{3}[0-9A-Z]{1}[0-9]{1}$/;

  if(!(patronCURP.test(CURP.value))) {
    //alert('Formato de Boleta Incorrecto');
    CURP.classList.remove('valid');
    CURP.classList.add('invalid');
    
  } else{
    CURP.classList.remove('invalid');
    CURP.classList.add('valid');
  }


}



/////////////////////////////////////////////////
document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("calle").addEventListener('input', calleInput); 
});

function calleInput(evento){
  var calle = document.getElementById('calle');
  
  patronCalle=/^[a-zA-Z0-9À-ÿ\u00f1\u00d1]+(\s*[a-zA-Z0-9À-ÿ\u00f1\u00d1]*)*[a-zA-Z0-9À-ÿ\u00f1\u00d1]+$/;
  
  if(!(patronCalle.test(calle.value))) {
    //alert('Formato de Boleta Incorrecto');
    calle.classList.remove('valid');
    calle.classList.add('invalid');
    
  } else{
    calle.classList.remove('invalid');
    calle.classList.add('valid');
  }

}


/////////////////////////////////////////////////
document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("numero").addEventListener('input', numeroInput); 
});

function numeroInput(evento){
  var numero = document.getElementById('numero');
  patronNumero=/^S{0,10}\d{1,10}$/;
  if(!(patronNumero.test(numero.value))) {
    //alert('Formato de Boleta Incorrecto');
    numero.classList.remove('valid');
    numero.classList.add('invalid');
    
  } else{
    numero.classList.remove('invalid');
    numero.classList.add('valid');
  }


}


/////////////////////////////////////////////////
document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("colonia").addEventListener('input', coloniaInput); 
});

function coloniaInput(evento){
  var colonia = document.getElementById('colonia');
  patronCalle=/^[a-zA-Z0-9À-ÿ\u00f1\u00d1]+(\s*[a-zA-Z0-9À-ÿ\u00f1\u00d1]*)*[a-zA-Z0-9À-ÿ\u00f1\u00d1]+$/;
  if(!(patronCalle.test(colonia.value))) {
    //alert('Formato de Boleta Incorrecto');
    colonia.classList.remove('valid');
    colonia.classList.add('invalid');
    
  } else{
    colonia.classList.remove('invalid');
    colonia.classList.add('valid');
  }


}

///////////////////////////////////////////

document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("codigo_postal").addEventListener('input', codigoInput); 
});

function codigoInput(evento){
  var codigoPostal = document.getElementById('codigo_postal');
  patronCodigoPostal=/^S{0,10}\d{5,5}$/;
  if(!(patronCodigoPostal.test(codigoPostal.value))) {
    //alert('Formato de Boleta Incorrecto');
    codigoPostal.classList.remove('valid');
    codigoPostal.classList.add('invalid');
    
  } else{
    codigoPostal.classList.remove('invalid');
    codigoPostal.classList.add('valid');
  }

  

}


//////////////////////////

document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("telefono_celular").addEventListener('input', telefonoCInput); 
});

function telefonoCInput(evento){
  var telefono = document.getElementById('telefono_celular');
  patronTelefono=/^S{0,10}\d{10,10}$/;

  if(!(patronTelefono.test(telefono.value))) {
    //alert('Formato de Boleta Incorrecto');
    telefono.classList.remove('valid');
    telefono.classList.add('invalid');
    
  } else{
    telefono.classList.remove('invalid');
    telefono.classList.add('valid');
  }

}



///////////////////
document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("correo_electronico").addEventListener('input', correoEInput); 
});

function correoEInput(evento){
  var correoElectronico = document.getElementById('correo_electronico');
  patronCorreoE = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/;
  if(!(patronCorreoE.test(correoElectronico.value))) {
    //alert('Formato de Boleta Incorrecto');
    correoElectronico.classList.remove('valid');
    correoElectronico.classList.add('invalid');
    
  } else{
    correoElectronico.classList.remove('invalid');
    correoElectronico.classList.add('valid');
  }

}

/////////////////////

document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("escuela_procedencia").addEventListener('input', escuelaPInput); 
});

function escuelaPInput(evento){
  var escuelaProcedencia = document.getElementById('escuela_procedencia');
  if(escuelaProcedencia.disabled == false){
    if(escuelaProcedencia.value==0){
      escuelaProcedencia.classList.remove('valid');
      escuelaProcedencia.classList.add('invalid');
    } else{
      escuelaProcedencia.classList.remove('invalid');
      escuelaProcedencia.classList.add('valid');
    }
  }


  
}

///////////////////////////////////////////////


document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("promedio").addEventListener('input', promedioInput); 
});

function promedioInput(evento){
  var promedio = document.getElementById('promedio');
  patronpromedio =/^[0-9]{1}[.]{1}[0-9]{1}[0-9]{0,1}$|^[1]{1}[0]{1}$|^[0-9]{1}$/;
  if(!(patronpromedio.test(promedio.value))) {
    //alert('Formato de Boleta Incorrecto');
    promedio.classList.remove('valid');
    promedio.classList.add('invalid');
    
  } else{
    promedio.classList.remove('invalid');
    promedio.classList.add('valid');
  }
}



//Función para activar el campo

document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("escuelaP").addEventListener('input', carg); 
});

function carg(elemento){
  var escuelaProcedencia = document.getElementById('escuela_procedencia');
  d=elemento.value;
  if(d == "21"){
    escuelaProcedencia.disabled=false;
  }else{
    escuelaProcedencia.disabled=true;
  }
}



/*
Expresiones Regulares

\d{3}-\d{3}-\d{4} --> de nuumero de 10 cifras con el patron nnn-nnn-nnnn

Expresion regular del telefono: \d{10};

Anclajes.

^PE    -->Inicia con PE
^PP    -->Inicia con PP
\d{8}
\d{10}

xyz$ --> Termine es correo electronico

Termina con xyz

^PE\d{8}|^PP\d{8}|d{10}

/^P{0,2}E{0,1}\d{8,10}/



{0,10}P{0,2}E{0,1}\d{8,8}$|\d{10,10}

d{8,10}



Expresion Regular telefono

\d{8,10} --> 8 a 10


^S{0,10}[PE]\d{0,8}|^S{0,10}\d{10,10}

Expresion de Boleta
/^S{0,10}P{2,2}\d{8,8}$|^S{0,10}\d{10,10}|^S{0,10}PE{1,1}\d{8,8}$/


*/

document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("formulario").addEventListener('submit', validarFormularioSubmit); 
});

function validarFormularioSubmit(evento){
  evento.preventDefault();

  var boleta = document.getElementById('no_boleta');
  var nombre = document.getElementById('nombre');
  var apellidoPaterno = document.getElementById('apellido_Paterno');
  var apellidoMaterno = document.getElementById('apellido_Materno');
  var fecha = document.getElementById('fecha_nacimiento');
  var CURP = document.getElementById('curp');
  var numero = document.getElementById('numero');
  var calle = document.getElementById('calle');
  var colonia = document.getElementById('colonia');
  var alcaldia = document.getElementById('alcaldia');
  var codigoPostal = document.getElementById('codigo_postal');
  var telefono = document.getElementById('telefono_celular');
  var correoElectronico = document.getElementById('correo_electronico');
  var escuelaP = document.getElementById('escuelaP');
  var escuelaProcedencia = document.getElementById('escuela_procedencia');
  var entidad = document.getElementById('entidad');
  var promedio = document.getElementById('promedio');

  /*Expresiones Regulares*/
  patronBoleta=/^S{0,10}P{2,2}\d{8,8}$|^S{0,10}\d{10,10}$|^S{0,10}PE{1,1}\d{8,8}$/;
  patronTexto=/^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$/;
  patronFecha=/^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})$/;
  patronCURP=/^[A-Z]{1}[AEIOU]{1}[A-Z]{2}[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])[HM]{1}(AS|BC|BS|CC|CS|CH|CL|CM|DF|DG|GT|GR|HG|JC|MC|MN|MS|NT|NL|OC|PL|QT|QR|SP|SL|SR|TC|TS|TL|VZ|YN|ZS|NE)[B-DF-HJ-NP-TV-Z]{3}[0-9A-Z]{1}[0-9]{1}$/
  patronNumero=/^S{0,10}\d{1,10}$/;
  patronCodigoPostal=/^S{0,10}\d{5,5}$/;
  patronTelefono=/^S{0,10}\d{10,10}$/;
  //patronCorreoE = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/
  patronCorreoE = /^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$/;
  patronpromedio =/^[0-9]{1}[.]{1}[0-9]{1}[0-9]{0,1}$|^[1]{1}[0]{1}$|^[0-9]{1}$/;
  //patronBoleta=/^P{2,2}\d{8,8}$|^\d{10,10}$|^PE{1,1}\d{8,8}$/;
  patronCalle=/^[a-zA-Z0-9À-ÿ\u00f1\u00d1]+(\s*[a-zA-Z0-9À-ÿ\u00f1\u00d1]*)*[a-zA-Z0-9À-ÿ\u00f1\u00d1]+$/;


  if(!(patronBoleta.test(boleta.value))) {

    swal("¡ Boleta Incorrecta !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronTexto.test(nombre.value))) {
    swal("¡ Nombre Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronTexto.test(apellidoPaterno.value))) {
    swal("¡ Apellido Paterno Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronTexto.test(apellidoMaterno.value))) {
    swal("¡ Apellido Materno Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronFecha.test(fecha.value))) {
    swal("¡ Fecha de Nacimiento Incorrecta !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronCURP.test(CURP.value))) {
    swal("¡ CURP Incorrecta !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronCalle.test(calle.value))) {
    swal("¡ Calle Incorrecta !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(!(patronNumero.test(numero.value))) {
    swal("¡ Número Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(!(patronCalle.test(colonia.value))) {
    swal("¡ Colonia Incorrecta !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(alcaldia.value==0) {
    swal("¡ Alcaldía Incorrecta !", "Debe seleccionar Alcaldía, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(!(patronCodigoPostal.test(codigoPostal.value))) {
    swal("¡ Código Postal Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(!(patronTelefono.test(telefono.value))) {
    swal("¡ Teléfono Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(!(patronCorreoE.test(correoElectronico.value))) {
    swal("¡ Correo Electrónico Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  }

  if(escuelaP.value==0) {
    swal("¡ Escuela de Procedencia Incorrecta !", "Debe seleccionar Escuela de Procedencia, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(escuelaProcedencia.disabled == false){
    if(escuelaProcedencia.value==0){
      swal("¡ Escuela de Procedencia Incorrecta !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
      return;
    }
  }

  if(entidad.value==0) {
    swal("¡ Entidad Federativa Incorrecta !", "Debe seleccionar Entidad Federativa, presione el boton para volver a intentar", "error"); 
    return;
  } 

  if(!(patronpromedio.test(promedio.value))) {
    swal("¡ Promedio Incorrecto !", "Revisa el campo, presione el boton para volver a intentar", "error"); 
    return;
  } 

  swal("¡ Registro exitoso !", "Datos Registrados, presione el boton para continuar", "success"); 
  
  setTimeout(function(){
    console.log("Esperando");
  },5000);

  this.submit()

}