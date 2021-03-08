

var contadordeactualizacion = 10;
var mijson;

function buscarJugadores() {


  var tabla = document.querySelector('.tablaBody');


  fetch('../backend/jugadores.json')
    .then(res => res.json())
    .then(res => {

      res.forEach(bp => {
        tabla.innerHTML += `
              <tr>
                  <td>${bp.score}</td>
                  <td><img src="${bp.profileImage}"></td>
                  <td>${bp.nickname}</td>
                  <td>${bp.creationDate}</td>
                  <td>${bp.idPlayer}</td>
                  <td>${bp.idStat}</td>
              </tr>
              `;
      });


    });


}


function contador() {
  var actualizar = document.getElementById("actualizar");

  contadordeactualizacion--;

  if (contadordeactualizacion == 0) {
    contadordeactualizacion = 10;
    actualizar.innerHTML = 'Recargando datos en . . . ' + contadordeactualizacion;

    actualizarTabla();
  }

  actualizar.innerHTML = 'Recargando datos en . . . ' + contadordeactualizacion;

}



function actualizarTabla() {

  var tabla = document.querySelector('.tablaBody');
  tabla.innerHTML = `
    <tr>
    </tr>
    `;


  fetch('../backend/jugadores.json')
    .then(res => res.json())
    .then(res => {

      res.forEach(bp => {
        tabla.innerHTML += `
              <tr>
                  <td>${bp.score}</td>
                  <td><img src="${bp.profileImage}"></td>
                  <td>${bp.nickname}</td>
                  <td>${bp.creationDate}</td>
                  <td>${bp.idPlayer}</td>
                  <td>${bp.idStat}</td>
              </tr>
              `;
      });


    });


}

function readJSON(path) { 
  var xhr = new XMLHttpRequest(); 
  xhr.open('GET', path, true); 
  xhr.responseType = 'blob'; 
  xhr.onload = function(e) {  
    if (this.status == 200) { 
        var file = new File([this.response], 'temp'); 
        var fileReader = new FileReader(); 
        fileReader.addEventListener('load', function(){ 
             mijson = fileReader.result;
             console.log(mijson);

            


        }); 
        fileReader.readAsText(file); 
    }  
  } 
  xhr.send(); 
} 




function exportarCSV() {
  
  //readJSON('../backend/jugadores.json');

  FileSaver.saveAs('../backend/jugadores.json',"mejores_juagdores.json"); 

  downloading.then();
}
