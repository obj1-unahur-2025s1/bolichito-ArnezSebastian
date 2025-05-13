//Colores provistos:
object rojo {
  method fuerte() = true
}

object verde {
  method fuerte() = true
}

object celeste{
  method fuerte() = false
}

object pardo {
  method fuerte() = false
}

//Otro color relevante:
object naranja {
  method fuerte() = true
}

//Materiales necesarios:
object cobre{
  method brilla() = true
}

object vidrio {
  method brilla() = true
}

object lino {
  method brilla() = false
}

object madera {
  method brilla() = false
}

object cuero {
  method brilla() = false
}

//Objetos a considerar:
object remera{
  const peso = 800
  method peso() = peso
  method color() = rojo
  method material() = lino
}

object pelota {
  const peso = 1300
  method peso() = peso
  method color() = pardo
  method material() = cuero
}

object biblioteca {
  const peso = 8000
  method peso() = peso
  method color() = verde
  method material() = madera
}

object muñeco {
  var peso = 100
  method peso() = peso
  method color() = celeste
  method pesoNuevo(nuevoPeso){
    peso = nuevoPeso
  }
  method material() = vidrio
}

object placa {
  var peso = 0
  var color = verde
  method peso() = peso
  method pesoNuevo(nuevoPeso){
    peso = nuevoPeso
  }
  method color() = color
  method pintarDe(nuevoColor){
    color = nuevoColor
  }
  method material() = cobre
}

//Otros objetos relevantes:
object arito {
  const peso = 180
  method peso() = peso
  method color() = celeste
  method material() = cobre 
}

object banquito {
  var color = naranja
  const peso = 1700
  method peso() = peso
  method color() = color
  method pintarDe(nuevoColor) {
    color = nuevoColor
  }
  method material() = madera
}

object cajita {
  var objetoDentro = arito
  const pesoCaja = 400
  var pesoTotal = pesoCaja + objetoDentro.peso()
  method peso() = pesoTotal
  method sacarObjetoDeCaja() {
    pesoTotal = pesoTotal - objetoDentro.peso()
  }
  method reemplazarObjetoEnCajaPor(objetoAGuardar){
    self.sacarObjetoDeCaja()
    objetoDentro = objetoAGuardar
    pesoTotal = pesoTotal + objetoDentro.peso()
  }
  method color() = rojo
  method material() = cobre
}