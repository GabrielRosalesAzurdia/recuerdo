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

      // En vez de container puedo utilizar el Widget Padding que me
      // deja añadir padding igual con EdgeInsets y adimte un child
      // la diferencia es que ese widget no admite margin y no
      // se le pude colocar color de fondo
      // Padding(
      //  padding: EdgeInsets.all(30),
      //  child: Text("algo"),
      // ),

      body: Container(
        // con el padding ese utiliza EdgeInsets para deterimnarlo
        // EdgeInsets.symetric() sirve para dar padding parejo
        // horizontal y verticalmente
        // EdgeInsets.fromLTRB para establecer distintos valores
        // izquierda, arriba, derecha y abajo en ese orden
        // EdgeInsets.all() es para ponerlo todo igual
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        // El margin es para espacio externo, hace que la cajita se
        // aparte de los demás elementos
        margin: const EdgeInsets.all(30),
        color: Colors.grey,
        child: const Text("Estas en la segunda ruta"),
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
