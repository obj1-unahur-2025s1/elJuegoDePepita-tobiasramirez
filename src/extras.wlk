import pepita.*
import wollok.game.*

object nido {
method image() = "nido.png"
method position() = game.at(11,12)
	// Completar
}

object silvestre {
var lugar = game.at(3.max(pepita.position().x()),0)
method position() = game.at(3.max(pepita.position().x()),0)
method position(nueva) {lugar = nueva}
method image() = "silvestre.png"

 
}

