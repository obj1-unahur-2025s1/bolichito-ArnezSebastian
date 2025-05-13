import objetos.*
import personas.*

object bolichito {
    var objetoEnVidriera = null
    var objetoEnMostrador = null
    method esBrillante() {
        return
            (objetoEnVidriera.material().brilla()) 
            && 
            (objetoEnMostrador.material().brilla())
    }
    method esMonocromatico() {
        return
            (objetoEnVidriera.color()) == (objetoEnMostrador.color())
    }
    method estaEquilibrado() {
        return
            (objetoEnMostrador.peso() > objetoEnVidriera.peso())
    }
    /*
    method estaDesequilibrado() {
        return
            (objetoEnVidriera.peso()) != (objetoEnMostrador.peso())
    }
    */
    method estaDesequilibrado() = not(self.estaEquilibrado())
    method tieneObjetoExhibidoDeColor(colorARevisar) {
        return
            (objetoEnVidriera.color() == colorARevisar)
            ||
            (objetoEnMostrador.color() == colorARevisar)
    }
    method puedeMejorar() {
        return
            (self.estaDesequilibrado())
            ||
            (self.esMonocromatico())
    }
    /*
    method puedeOfrecer_En_A_(objeto, lugar, persona) {
        if(persona.leGusta(objeto)) {

        }
    }
    */
    method puedeOfrecerObjetoA(persona) {
        return
            persona.leGusta(objetoEnVidriera)
            ||
            persona.leGusta(objetoEnMostrador)
    }
    //método de acción extra:
    method actualizarObjetoEnVidrieraPor(objetoNuevo) {
        objetoEnVidriera = objetoNuevo //para actualizar correctamente una variable es necesario el "=", y no el "=="
    }
    method actualizarObjetoEnMostradorPor(objetoNuevo) {
        objetoEnMostrador = objetoNuevo
    }
    //metodos de consulta extra:
    method objetoEnVidriera() = objetoEnVidriera
    method objetoEnMostrador() = objetoEnMostrador
}