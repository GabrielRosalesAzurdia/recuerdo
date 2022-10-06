import 'dart:async';

import 'package:flutter/material.dart';

// Widget creado solo para experimentar con el diseño y las proporciones de
// la pantalla esta vez pasando a columnas
class AprendiendoLayout2 extends StatelessWidget {
  const AprendiendoLayout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LA APP PARA RECORDAR 3"),
        centerTitle: true,
        backgroundColor: Colors.cyan[300],
      ),
      // la columna aregla elementos de forma vertical colocnadolos uno debajo
      // del otro al igual que Row se maneja con children
      // en la columnos los axis se invierten
      // - - - - - - - - - - - > cross axis
      // ^
      // | main axis
      // |
      body: Column(
        // center los coloca al centro de la columna (pantalla)
        // end los manda al fondo de la columna
        // spaceEvenly los separa a espacios iguales cubriendo toda la columna
        mainAxisAlignment: MainAxisAlignment.end,
        // stectch abarca todo lo horizaontal de la columna (se ve bien)
        // center es por defecto en el centro de la columna
        // start los aculuma del lado izquierdo de la columna
        // end los acumula del lado derecho de la columna
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              const Text("hola!"),
              const Text("Mundooooo! :v"),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.cyan,
            child: const Text("one"),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            color: Colors.pink,
            child: const Text("two"),
          ),
          Container(
            padding: const EdgeInsets.all(40),
            color: Colors.amber,
            child: const Text("three"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.pop sirve para regresar a la pantalla anterior
          Navigator.pop(context);
        },
        child: const Text("Regresa"),
      ),
    );
  }
}
