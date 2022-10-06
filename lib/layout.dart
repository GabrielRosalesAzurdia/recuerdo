import 'package:flutter/material.dart';

// Widget creado solo para experimentar con el diseño y las proporciones de
// la pantalla
class AprendiendoLayout extends StatelessWidget {
  const AprendiendoLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // Container es un widget que sirve para contener y aplicar efectos
    // tanto esteticos como para agregar padding y margin
    // recordando que padding es el espacio interno de un elemento
    // y margin es el espacio externo de un elemento
    return Container(
      // con el padding ese utiliza EdgeInsets para deterimnarlo
      // EdgeInsets.symetric() sirve para dar un padding parejjo
      // EdgeInsets.fromLTRB para establecer distintos valores
      // izquierda, arriba, derecha y abajo en ese orden
      // EdgeInsets.all() es para ponerlo todo igual
      padding: EdgeInsets.all(20.0),
      color: Colors.grey,
      child: const Text("Estas en la segunda ruta"),
    );
  }
}
