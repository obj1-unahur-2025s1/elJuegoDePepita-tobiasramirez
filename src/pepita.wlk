import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var property position = game.at(0,0)

	method image() {
		return if (self.estaEnElNido()) "pepita-grande.png" else if(self.atrapada()) "pepita-gris.png" else "pepita.png"
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method vuela(kms) {
		energia = energia - kms * 9
	}

	method irA(nuevaPosicion) {
		self.vuela(position.distance(nuevaPosicion))
		position = nuevaPosicion
	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() = self.position() == nido.position()
	method atrapada() =self.position() == silvestre.position()
	
		
		
	

}

