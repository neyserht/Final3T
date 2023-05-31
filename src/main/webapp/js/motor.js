
function makeRequest(h01,d1,controller1, method)
{
    let xhr = new XMLHttpRequest();

    console.log("Prueba H01-3");

    // 2.- Crear y devolver la promesa
    return new Promise( function(resolve, reject){

        // 3.- Abrir la conexión con el método y la url indicada
        let argumentos1 = "?hotel=" + h01.id;
        xhr.open(method, controller1 + argumentos1, true);

        // 5-A.- Escuchar el evento load que se dispara cuando la petición termina
        xhr.onload = function()
        {
            // si el estado de la respuesta es 200 (Éxito)
            if (xhr.status === 200) {
                // Resolver la promesa con la respuesta como texto
                //console.log(xhr.responseText);
                resolve(xhr.responseText);
                d1.innerHTML=this.responseText;
            }
            // Si el estado de la respuesta no es 200 (Error)
            else
            {
                // Rechazar la promesa con el estado de la respuesta como motivo
                reject(xhr.status);
            }
        };

        // 5-B.- Escuchar el evento load que se dispara cuando hay un problema con la red
        xhr.onerror = function(){
            reject('Error de red');
        };

        // 4.- Enviar la petición
        xhr.send();

    });
}

window.onload = function () {
    const body1 = document.body;

    if (body1.id=="inicio")
    {
        //alert("Estas en inicio");

    }
    else if (body1.id=="detalle")
    {
        //alert("Estas en detalle");
    }

}

window.addEventListener("load", function(event){

    //Paso 1 Referencia de los objetos
    let objeto;
    const method = 'GET';

    // Paso 2 - Asociacion de del elemento al evento y llamada a la funcion
    this.document.body.addEventListener("click", function(event){

        objeto =  event.target;
        //if(objeto.clas=="hot"){
        //console.log(objeto.id);
        let d1 = document.getElementById("d1");
        let controller1 = "HotelController";

        console.log(objeto);
        console.log(objeto.className);
        makeRequest(objeto,d1,controller1, method);
        //}
    });

});


//asociacion de eventos
