object casa {
var property cuidador = tom
var property quilombero = jerry
var suciedad = 0
method pasaElDia(){
    cuidador.limpiarCasa()
    if (cuidador.puedeSacarQuilombero(quilombero)) { 
        quilombero = 0 
    }
}
method pasaLaNoche(){
    cuidador.duerme()
    if (quilombero != 0) {
        quilombero.haceQuilombo()
    }
}
method limpiar(limpieza) {
    suciedad -= limpieza
}
method limpiarTodo() {
    suciedad = 0
}
method ensuciar(mugre) {
    suciedad += mugre
}

}

object tom {
    var property energia = 100
    method limpiarCasa() {
        casa.limpiar(100)
        energia -= 40
    }
    method velocidad() = 5 + (energia / 10)
    method puedeSacarQuilombero(quilombero) = self.velocidad() > quilombero.velocidad()
    method duerme() {
        energia += 50
    }
    method interrumpirSueño() {
        energia -= 20
    }
}

object jerry {
    var peso = 5
    method haceQuilombo() {
        casa.ensuciar(110)
        self.robarComida()
    }
    method robarComida() {
        peso += 1
    }
    method velocidad() = 10 - peso
}

object tuffy {
    method velocidad() = 10
    method haceQuilombo() {
        casa.cuidador().interrumpirSueño()
    }
}

object robocat {
    method limpiarCasa() {
        casa.limpiarTodo()
    }
    method puedeSacarQuilombero() {
        return true
    }
    method duerme() {}
    method interrumpirSueño() {}
}

