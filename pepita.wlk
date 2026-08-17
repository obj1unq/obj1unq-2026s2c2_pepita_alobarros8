object pepita {

  var energia = 100
  method volar(distancia) {
    energia = energia - 10 - distancia / 10
  }
  method descansar() {
    energia = energia + 10
  }

  method comer(comida) {
    energia = energia + comida.energiaQueAporta()
  }

  

}

object alpiste{
  method energiaQueAporta() {
    return 25
  }
}

object manzana{
  var gradoDeMadurez = 1
  const calorias = 20
  method energiaQueAporta() {
    return if (gradoDeMadurez < 3) {
      return calorias * gradoDeMadurez
    } else {
      return 0
    }
  }
}

/* ejercicio 4 pepon Agregar a Pepón: Pepón es otra ave que puede comer el alpiste y la manzana y sigue las siguientes reglas:

La energía inicial de pepón es 30.
Cuando come, solo puede aprovechar la mitad de la energía que aporta el alimento
Cuando vuela gasta 20 fijos más 2 joules por km,
Está cansado si su energía es menor a 34*/

object pepon {
  var energia = 30
  method volar(distancia) {
    energia = energia - 20 - 2 * distancia
  }
  method descansar() {
    energia = energia + 10
  }

  method comer(comida) {
    energia = energia + comida.energiaQueAporta() / 2
  }
}

/* Ejercicio 5: Rebeca
Agregar a Rebeca, que es una persona

Tiene un ave, a veces es Pepón, a veces es Pepita, por lo tanto tiene que entender un mensaje para que se le indique cual es su ave. Inicialmente es pepita.

Alimentar de Rebeca
Rebeca entiende el mensaje alimentar, que recibe un alimento por parámetro. Al recibir este mensaje rebeca alimenta a su ave.

Ejemplos:

Si tiene a pepon con energía de 30, y recibe el mensaje alimentar(alpiste) pepon queda con 42.5 de energía
Si tiene a pepita con energía de 100 y recibe el mensaje alimentar(alpiste) pepita queda con 125 de energía.
Cenas
Entiende el mensaje cenas sin parámetros, el cual devuelve la cantidad de veces que rebeca dio de alimentar a su ave Desde que la está entrenando. (Pensar como hacer para recordar este dato y cuando se debe resetear).

Por ejemplo:

a rebeca se le encomienda entrenar a pepita
a rebeca se le pide alimentar a su ave
a rebeca se le pide nuevamente alimentar a su ave
a rebeca se le pregunta por las cenas: devuelve 2
a rebeca se le enconmienda entrenar a pepon
a rebeca se le pide alimentar a su ave
a rebeca se le pregunta por las cenas: devuelve 1
a rebeca se le encomienda entrenar a pepita
a rebeca se le pregunta por las cenas: devuelve 0
Nota: Si rebeca está entrenando a pepita y se le pide nuevamente que entrene a pepita, se puede considerar que la cuenta de cenas debe reiniciarse.*/

object rebeca {
  var ave = null
  var cenas = 0
  method ave(_ave){
    ave = _ave
    cenas = 0
  }

  method alimentar(comida) {
  ave.comer(comida)
  cenas = cenas + 1
  }

  method cantidadDeCenas() {
    return cenas
    
  }
  
}

/*Ejercicio 6: Reflexión sobre los conceptos
Teniendo en cuenta tu solución del problema, respondé las preguntas siguientes:

¿Qué métodos son consultas y cuáles son órdenes?
Metodos que son consultas : energiaQueAporta() , cantidadDeCenas()
Metodos que son ordenes : comer(), volar(), descansar(), alimentar(), ave()

En cuanto a cada situación que manifiesta polimorfismo:

a. ¿Cuál es el mensaje polimórfico y quién lo envía?
El mensaje polimorfico que se envia es energiaQueAporta() y lo envia pepita 

b. Considerando los objetos que entienden el mensaje polimórfico ¿Qué nombre le pondrías al tipo polimórfico?
Alimento

d. ¿Qué objetos implementan ese tipo?
Manzana() y alpiste()



*/