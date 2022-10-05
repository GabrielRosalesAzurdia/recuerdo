import 'package:flutter/material.dart';

// Aquí es donde ocurre toda la magia,
// esta cosa es el comienzo del árbol de widgets
void main() {
  // En este caso comienzo con MaterialApp pero es más común comenzar con
  // MyApp(), en home le doy el widget stateless que cree abajo
  runApp(const MaterialApp(home: Home()));
}

// Para añadir fuentes nos vamos al pubspec.yaml archivo
// Se descomenta unas lineas de código de fonts y se añade la
// que pusimos en la carpeta fonts

// Para crearlo de manera rápida utilizar el sniped
// stless y darle a enter
// En flutter todo es una class, todo lo que se usa, el center, Text, etc
// son solo intancias de clases
// Stateless = no puede cambiar nada visual
// Stateful = puede cambiar data y visual
class Home extends StatelessWidget {
  const Home({super.key});

  // Para que al guardar se presenten los cambios y no tener que
  // presionar r manualmente a cada momento se utiliza la build
  // Todo lo que hace es mandar un widget, en la myoría de casos
  // un árbol de widgets que en conjunto forman una pantalla
  // Al tener el build solo se recarga lo que está en el widget que cambió
  // El override es porque estamos alterando la build de statelesswidget
  @override
  Widget build(BuildContext context) {
    // A su propiedad return pasamos Scaffold para comenzar armar una página de
    // inicio bastante sencilla, scaffold es como una sección con appbar y botn
    return Scaffold(
      // Aquí configuro la appbar con color y texto
      appBar: AppBar(
        title: const Text("LA APP PARA RECORDAR"),
        centerTitle: true,
        // Para los colores puedo colocar entre corchetes un número que
        // responde a una sombra de ese mismo color
        backgroundColor: Colors.cyan[300],
      ),
      // En el body estoy utilizando una listview para poder mostrra varias
      // cosas a la vez moviendome en columna y haciendo scroll
      // En children van todos los widgets
      body: ListView(
        children: [
          // El widget de imagen ayuda a mostrar imágenes tanto locales
          // como en la nube
          // para jalar de la web se usa NetworkImage("link")
          // para jalar locales se usa AssetImage("locación")
          // para poder utilizar las locales debemos ir a pubspec.yaml
          // y decirle dónde se encuentra el folder
          // la forma conrta es Image.asset("url")
          Image.asset("assets/pathetic.jpg"),

          Image.asset("assets/meme.jpg"),

          // Puedo poner widgets dentro de widgets y en este caso estoy usando
          // a center para envolver todo porque centra todo y solo quiero
          // mostrar un elemento que sería el texto hola compañeros
          Center(
            // Al texto le puedo cambiar varias cosas como el tamaño, grosor y espacio
            // también le puedo cambiar la tipografía que usa
            child: Text(
              "Hola compañeros",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.grey[600],
                // Aquí llamamos a una fuente según el nombre que le hayamos puesto
                // en el pubspec.yaml
                fontFamily: "PressStart2P-Regular",
              ),
            ),
          ),
        ],
      ),

      // Como parte del scaffold puedo utilizar un botón flotante que está
      // siempre presente en la pantalla
      floatingActionButton: FloatingActionButton(
        // Función que se ejecuta cuando el botón se aplasta
        onPressed: () {
          print("hola");
        },
        // El child del boton puede ser texto o un ícono
        child: const Text("click"),
        backgroundColor: Colors.cyan[300],
      ),
    );
  }
}
