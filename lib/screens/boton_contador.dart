//Importar libreria material.dart
import 'package:flutter/material.dart';

//Clase principal y constructor de estado
class BotonContador extends StatelessWidget {
  const BotonContador({super.key});
  _BotonContadorState createState() => _BotonContadorState();
}

//Llamada de clase principal con su constructor
class _BotonContadorState extends State<BotonContador> {
  int txt = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('title'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Contador de clicks", style: TextStyle(fontSize: 20)),
              Text("$txt")
            ],
          ),
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //1
          FloatingActionButton(
              onPressed: () => setState(() => txt = 0),
              child: Icon(Icons.add, size: 30)),
          //2
          FloatingActionButton(
              onPressed: () => setState(() => txt = 0),
              child: Icon(Icons.remove, size: 30)),
          //3
          FloatingActionButton(
              onPressed: () => setState(() => txt = 0),
              child: Icon(Icons.add, size: 30)),
        ]));
  }
}
