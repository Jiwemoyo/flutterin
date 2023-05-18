import 'package:flutter/material.dart';
import 'package:proyecto1/src/contador.dart';
import 'package:proyecto1/src/bootstrap.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Haciendo Bootstrap',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false, // Oculta el banner de depuración
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Incluyecndo bootsrap'),
        ),
        body: Bootstrap(), // Muestra el contenido de bootstrap.dart
      ),
    );
  }
}
