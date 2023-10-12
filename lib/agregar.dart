import 'package:app_win/navbar.dart';
import 'package:flutter/material.dart';

class agregar extends StatefulWidget {
  const agregar({Key? key}) : super(key: key); // Corrección aquí

  @override
  State<agregar> createState() => _AgregarState();
}

class _AgregarState extends State<agregar> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavBar(),
      appBar: AppBar(
        title: Text('agregar'),
        backgroundColor: Colors.amber,
      ),
      )
    );
  }
}