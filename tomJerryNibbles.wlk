object tom {
    var energía = 50
    method comer(unRatón) {
        energía = (energía + 12 + unRatón.peso()).min(1000)
    }
    method correr(unaDistancia) {
        energía = (energía - unaDistancia / 2).max(0)
    }
    method velocidadMáxima() = 5 + energía / 10
    method sePuedeCazarA(unaDistancia) = (energía - unaDistancia / 2) > 0
    method cazarRatónA(unRatón, unaDistancia) {
        if(self.sePuedeCazarA(unaDistancia)) {
            self.correr(unaDistancia)
            self.comer(unRatón)
        }
    }
}

object jerry {
    var edad = 2
    method peso() = edad * 20
    method cumplirAños() {
        edad = edad + 1
    }
}

object nibbles {
    method peso() = 35 
}

object minnie {
    method peso() = 30 
}