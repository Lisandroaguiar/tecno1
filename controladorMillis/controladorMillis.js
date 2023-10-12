let tiempo //VARIABLE QUE CONTIENE EL TIEMPO, ES LA QUE SE REINICIA DESPUES DEL EVENTO
  let reiniciadorDeTiempo //ES LA VARIABLE QUE COMIENZA EN 0 Y LUEGO SE TRANSFORMA EN MILLIS PARA REINICIAR LA VARIABLE TIEMPO
  let segundos // SOLO LA USO PARA TRADUCIR LOS MILLIS A SEGUNDOS 

  function setup() {
  tiempo=0
    reiniciadorDeTiempo=0
    segundos=0
}


function draw() {
  segundos=tiempo/1000 //1 SEGUNDO= 1000 millis ACA HAGO ESA TRADUCCION
    tiempo=millis()-reiniciadorDeTiempo //COMIENZA tiempo=millis()-0 YA QUE reiniciadorDeTiempo VALE 0
    if (mouseIsPressed) { //DENTRO DE ESTE IF VA EL EVENTO QUE REINICIA EL TIEMPO YA SEA EL MOUSE, UN BOTON, ETC
    reiniciadorDeTiempo=millis(); //LUEGO DE ALGUN EVENTO reiniciadorDeTiempo TOMA EL VALOR DE LOS MILLIS POR LO QUE LA VARIABLE tiempo VUELVE A 0 POR UN MOMENTO 
  }
  print(segundos)
}
