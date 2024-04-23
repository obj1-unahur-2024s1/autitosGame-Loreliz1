import wollok.game.*


object auto {
	// definimos los atributos para imagen y posición de nuestro elemento
	var image = "autitoRojo.png"
	var position = game.center()

	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = image
	method position() = position
	method image(nuevaImagen) { image = nuevaImagen }
	method posicion(nuevaPosicion) { position = nuevaPosicion }
	
	method moverDerecha(){ 
		var ancho = game.width()-1
		var nuevox = (position.x() +1) % ancho
		position = game.at( nuevox, position.y())
		//position = position.right(1)
	}
}
