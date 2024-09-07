import feroz.*

object caperucita {
    method peso() = 60 + canasta.peso()
}

object canasta {
  var manzanas = 6
  method peso() = manzanas * 0.2
  method caer(cantidad) {
    manzanas = 0.max(manzanas - cantidad)
  }
}

object abuelita {
  method peso() = 50
}

object hamburguesa {
    method peso() = 20
}

object cazador {
  method llegar() {
    if(feroz.estaSaludable()) feroz.comer(self)
    else feroz.crisis()
  }
  method peso() = 100
}