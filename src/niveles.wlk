import pepita.*
import comidas.*
import extras.*
import wollok.game.*

object tutorial1 {

	method iniciar() {
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisualCharacter(pepita)
	}

}

object tutorial2 {

	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
		game.onTick(800, "gravedad", {pepita.caer()})
		
	}
	method terminar() {
		game.clear()
		game.addVisual(pepita)
		game.say(pepita, "Me quede sin energia")
	}

}

object tutorial3 {

	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
		
	}

}

object config {

	method configurarTeclas() {
		keyboard.left().onPressDo({ pepita.irA(pepita.position().left(1))})
		keyboard.right().onPressDo({ pepita.irA(pepita.position().right(1))})
		// Completar para que se pueda mover arriba y abajo
		keyboard.up().onPressDo({pepita.irA(pepita.position().up(1))})
		keyboard.down().onPressDo({pepita.irA(pepita.position().down(1))})
		keyboard.c().onPressDo({pepita.come(game.uniqueCollider(pepita))})
	}

	method configurarColisiones() {
		game.onCollideDo(pepita, { algo => algo.teEncontro(pepita)})
		
		

	}
	

}

