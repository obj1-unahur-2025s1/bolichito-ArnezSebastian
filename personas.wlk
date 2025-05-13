import objetos.*
//a Rosa le gustan los objetos que pesan menos de 2 kilos (2000 gramos) o menos
object rosa {
  method leGusta(algo) = algo.peso() <= 2000
}

//Estefania le gustan los colores fuertes
//algo.color() == azul.color(), por ejemplo, y si dicho color es fuerte, entonces si le va a gustar.
object estefania{
  method leGusta(algo) = algo.color().fuerte()
}

//a Luisa le gustan cosas que sean de un material que brilla

object luisa{
  //method leGusta(algo) = algo == munieco
  method leGusta(algo) = algo.material().brilla()
}

/*
a Juan le gustan las cosas que, o bien son de un color que no es fuerte, 
o bien pesan entre 1200 y 1800 gramos.
*/

object juan {
  method leGusta(algo) = (not(algo.color().fuerte())) || 
  ((algo.peso() >= 1200) && (algo.peso() <= 1800))
}