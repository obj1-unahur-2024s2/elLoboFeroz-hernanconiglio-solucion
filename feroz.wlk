import caperucita.*

object feroz {
    var peso = 10
    method estaSaludable() = 
        peso.between(20, 150)

    method peso() = peso //para poder hacer los test
    
    method corre() {peso = (peso - 1).max(0)} //para explicar max
    method comer(unAlimento) {
        //para explicar min, decimos que el peso no puede superar 200
        peso = 200.min(peso + unAlimento.peso() * 0.1)
    }
    method crisis() {peso = 10}
}

object historia {
    method transcurrir() {
      feroz.corre()
      feroz.corre()
      feroz.comer(abuelita)
      canasta.caer(1)
      feroz.comer(caperucita)
    }
}