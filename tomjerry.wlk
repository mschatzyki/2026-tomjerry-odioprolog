
// Integrantes : Matias Scahtzyki , Uriel Cwirenbaum, Valentin Degenaro, Tobias Isidro y Tiago Shebar 
object casa {
var property cuidador = tom
var property quilombero = jerry
var property suciedad = 0

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

object pandilla {
    const miembros = [jerry, tuffy, jerry]
    method velocidad() = miembros.map({miembro => miembro.velocidad()}).min() / 2
    method haceQuilombo() {
        miembros.forEach({miembro => miembro.haceQuilombo()})
        if (miembros.size() > 3) {
            casa.cuidador().interrumpirSueño()
        }
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
    method puedeSacarQuilombero(quilombero) {
        return true
    }
    method duerme() {}
    method interrumpirSueño() {}
}



//nuevos cuidadores
object sacho{
    var property energia = 100
    method limparCasa() {
        casa.limpiar(1)
        energia -= 90
    }
    method puedeSacarQuilombero(quilombero) = false  

    method duerme(){
        energia += 10000000000000000
    }
    method interrumpirSueño() {
        energia -= 1
    }

}
object urielCwirenbaum {
     method velocidad() = 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
       method haceQuilombo(){
        casa.cuidador().interrumpirSueño()
  }
}




//respuesta: las interfaces son la de la casa, pandilla, tom, jerry, tuffy, robocat, sacho y uriel .
// podrian haber 2 clases la de los cuidadores y la de los quilomberos. 
