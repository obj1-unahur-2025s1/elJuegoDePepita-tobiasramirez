import src.niveles.*
import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var property position = game.at(0,0)

	method image() {
		return if (self.estaEnElNido()) "pepita-grande.png" else if(self.atrapada() or self.estaCansada()) "pepita-gris.png" else "pepita.png"
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	
	}

	method vuela(kms) {
		energia = energia - kms * 9
	}

	method irA(nuevaPosicion) {
		if(!self.estaCansada()) {

		self.vuela(position.distance(nuevaPosicion))
		position = nuevaPosicion
		} else {
			game.say(self, "sin energia")
		
		}
	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() = self.position() == nido.position()
	method atrapada() =self.position() == silvestre.position()
	method caer() {
		if(!self.estaEnElNido()) position = game.at(position.x(), 0.max(position.y() - 1))
	}


		
	

}

