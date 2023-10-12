import 'package:flutter/material.dart';
import 'package:app_win/settings.dart';
import 'package:app_win/utils/constantes.dart' as cons;

class addUSer extends StatefulWidget {
  const addUSer({super.key});

  @override
  State<addUSer> createState() => _addUSerState();
}

class _addUSerState extends State<addUSer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Agregar Usuario'),
        ),
        body: Stack(
          children: [
            Align(alignment: Alignment.bottomCenter,
              child:
              ElevatedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>settings()));
                },
                style: ElevatedButton.styleFrom(
                  primary: cons.salmon,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                child:
                Text(
                  'Ajustes',
                  style: TextStyle(
                      color: cons.blanco,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}