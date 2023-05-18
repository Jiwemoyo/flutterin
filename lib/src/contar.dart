import 'package:flutter/material.dart';
import 'package:proyecto1/src/bootstrap.dart';

class Contador extends StatefulWidget {
  Contador({Key? key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo - Uno',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 1, 37, 3),
            decoration: TextDecoration.underline,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(174, 15, 210, 187),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50.0,
            ),
            Text(
              'El numero es: $_contar',
              style: const TextStyle(fontSize: 35.0, color: Colors.lightBlue),
            ),
            const SizedBox(
              child: Image(
                image: AssetImage('images/img.jpg'),
              ),
            ),
            const SizedBox(height: 20),
            Bootstrap(), // Incluye el contenido de bootstrap.dart
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 20.0,
          color: Colors.amberAccent,
        ),
      ),
      floatingActionButton: _crearButtons(),
    );
  }

  _crearButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: const Icon(Icons.restore),
          onPressed: () {
            setState(() {
              _contar = 0;
            });
          },
          tooltip: 'El contador en 0',
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _contar = _contar + 1;
              if (_contar == 20) {
                _contar = 0;
              }
            });
          },
          tooltip: 'Incrementa el contador',
        ),
      ],
    );
  }
}
