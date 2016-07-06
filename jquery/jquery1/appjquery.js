$(document).ready(function(){
    $("#txtnombre").keyup(function(){

      var agregar = $("input[name=nom]").val();

      if ($('#txtnombre').val().length == 0) {
      $('#par').text('Como te llamas?');
      }

      else {
        $('#par').text('Hola '+agregar+'!');
      }

    });

});



