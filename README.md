# Kata 1 - SPA
[![Build Status](https://travis-ci.com/pdep-utn/kata-1-oo-spa-e-no-de-error-de-estupido.svg?token=QDsv1pyYQRXDMK6xa4xz&branch=master)](https://travis-ci.com/pdep-utn/kata-1-oo-spa-e-no-de-error-de-estupido)


## IMPORTANTE: Tareas

- [ ] Definir Integrantes
- [ ] Resolver la implementación de Olivia => archivo `personas.wlk` (los tests están resueltos en el archivo `testOlivia.wtest`)
- [ ] Resolver la implementación de Adriano => archivo `personas.wlk` (los tests están resueltos en el archivo `testAdriano.wtest`)
- [ ] Agregar tests del objeto que representa al Spa (archivo `testSpa.wtest`) y la implementación del spa (archivo `spa.wlk`)
- [ ] Agregar Badge de Travis

## Enunciado

Se trata de estudiar el efecto que produce en distintas personas visitar un spa. Vamos por partes.

## Dos personas

En particular, vamos a estudiar algunos aspectos de Olivia y Adriano. De cada uno de ellos nos van a interesar distintas cosas.

### Olivia

Queremos conocer su grado de concentración, que es un número que arranca en 4, y varía de acuerdo a estos criterios:

- cuando Olivia _recibe masajes_, su grado de concentración aumenta 2 puntos, pero a partir del tercer masaje, al estar más relajada su grado de concentración aumenta 5 puntos.
- cuando _recibe un baño de vapor_, su grado de concentración aumenta 1 punto.
- si Olivia tiene 7 puntos o más de concentración, es feliz.
- cuando _discute_, su grado de concentración baja a 5, salvo que tenga menos de 5 puntos de concentración, en cuyo caso no pasa nada.

Tenemos que poder consultar `olivia.gradoDeConcentracion()`.

### Adriano

Adriano es programador, entonces nos interesa qué tan contracturado está (según un nivel que es un número, 0 es "nada contracturado", cuanto más alto el número más contracturado está), y si está fresco para programar. Inicialmente tiene 5 de nivel de contractura y no está fresco para programar.

Las acciones relevantes que tiene para este modelo son:

- cuando recibe masajes, baja dos puntos su nivel de contractura.

> OJO nunca puede ser negativo, o sea, si estaba en 1 pasa a 0, si estaba en 0 se queda en 0.

- cuando se da un baño de vapor, queda fresco para programar.
- al comerse un Big Mac vuelve a quedar fresco para programar (?, así lo definió el usuario).
- cuando codea (trabaja), su nivel de contractura aumenta 1 punto la primera vez. Indefectiblemente queda quemado para programar (lo opuesto a fresco) cada vez que trabaja.

Un `diaDeTrabajo()` de Adriano consiste en: codear, comerse un big mac y volver a codear.

## El Spa

Agregar al modelo un objeto que represente al Spa. Lo único que esperamos del spa es que entienda el mensaje `atender(persona)`, donde la persona puede ser, p.ej., cualquiera de las definidas más arriba.

Cuando el spa atiende una persona pasan dos cosas: la persona recibe masajes, y se da un baño de vapor.

## Tests que debe definir

Para que la kata esté completa debe pasar los tests que se proveen, pero además **debe implementar** los siguientes tests:

- el spa atiende a Adriano, y luego de la visita, Adriano baja su nivel de contractura a 3 y está fresco para programar
- el spa atiende a Olivia, tras lo cual Olivia pasa a estar feliz

## Contestar

1. ¿Dónde aparece el concepto polimorfismo? Justifique.
//El concepto de polimorfismo aparece en spa, cuando a una persona le doy los mensajes "recibir masajes"
o "darse un banio de vapor" ya que encasillo en "persona" a todos los objetos que tengan definidos ambos metodos.

2. ¿Quién es el objeto que se beneficia de ese concepto? Justifique.
Se beneficia de ese concepto el objeto spa, ya que es quien puede trabajar con cualquier objeto "persona"

3. ¿De qué tipo es el parámetro `persona` de `spa`?
El tipo persona engloba a cualquier objeto que tenga definidos los metodos "recibirMasajes" y "darseUnBanioDeVapor"

```wollok
method atender(persona) {
  ...
}
```
