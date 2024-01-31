import 'package:flutter/material.dart';
import 'package:listaflutter/nosferatu.dart';

void main() => runApp(MiApp()); // llama al primer widget que se ejecutará

/*
void main() {
    runApp(MiApp);
}*/

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // es el estilo de la app
      title: "Primera App",  // nombre de la app
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // estructura básica de una app
      // estructura de una app movil
      appBar: AppBar(
        title: Text("Nosferatu"),
      ),
      body: ListView(
        children: nosferatus.map(_buildItem).toList(),
      ),
    );
  }
}


Widget _buildItem(Nosferatu nosferatu) {
  return new ListTile(
    title: new Text(nosferatu.name),
    subtitle: new Text('Subtitulo'),
    leading: new Image.network(
     nosferatu.url, //  URL de  imagen
      width: 50.0, // Ancho de la imagen
      height: 50.0, // Altura de la imagen
      fit: BoxFit.contain, // Ajuste de la imagen dentro del contenedor
    ),
    onTap: (){
      print(nosferatu.name);
    },
  );
}