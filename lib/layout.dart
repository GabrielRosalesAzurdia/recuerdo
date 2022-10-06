import 'dart:async';

import 'package:flutter/material.dart';

// Widget creado solo para experimentar con el diseño y las proporciones de
// la pantalla
class AprendiendoLayout extends StatelessWidget {
  const AprendiendoLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LA APP PARA RECORDAR 2"),
        centerTitle: true,
        backgroundColor: Colors.cyan[300],
      ),
      // Container es un widget que sirve para contener y aplicar efectos
      // tanto esteticos como para agregar padding y margin
      // recordando que padding es el espacio interno de un elemento
      // y margin es el espacio externo de un elemento

      //Container(
      // con el padding ese utiliza EdgeInsets para deterimnarlo
      // EdgeInsets.symetric() sirve para dar padding parejo
      // horizontal y verticalmente
      // EdgeInsets.fromLTRB para establecer distintos valores
      // izquierda, arriba, derecha y abajo en ese orden
      // EdgeInsets.all() es para ponerlo todo igual
      //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      // El margin es para espacio externo, hace que la cajita se
      // aparte de los demás elementos
      //margin: const EdgeInsets.all(30),
      //color: Colors.grey,
      //child: const Text("Estas en la segunda ruta"),
      //),

      // En vez de container puedo utilizar el Widget Padding que me
      // deja añadir padding igual con EdgeInsets y adimte un child
      // la diferencia es que ese widget no admite margin y no
      // se le pude colocar color de fondo
      // Padding(
      //  padding: EdgeInsets.all(30),
      //  child: Text("algo"),
      // ),

      // Row nos sirve para ir armando una estuctura de filas y de columnas,
      // siendo row la quep ermite crear una fila de elementos todos dentro de
      // children y separados por comas ya que es una lista
      body: Row(
        // nos sirve para setear la posición de los elementos
        // - - - - - - - - - - - > main axis
        // ^
        // | cross axis
        // |
        // .start es el por defecto, .center es en el centro
        // .end es al tope opuesto, .spaceBetween es dejando espacio entre los
        // objetos pero no al final de los topes de la panalla,
        // spaceEvelny deja espacio entre los objetos pero esta vez si deja
        // espacio a las orillas de la pantalla
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // .strech estira la height de los objetos para que cumpla con toda
        // la pantalla, .center centra las cosas, .start los topa al principio
        // de la fila, .end los topa con el fondo de la fila
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Hello World!"),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            child: const Text(
              "click me",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            color: Colors.cyan,
            padding: const EdgeInsets.all(30),
            child: const Text("este es el container"),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.pop sirve para regresar a la pantalla anterior
          Navigator.pop(context);
        },
        child: const Text("Regresa wey"),
      ),
    );
  }
}
