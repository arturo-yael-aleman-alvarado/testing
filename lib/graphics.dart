import 'package:flutter/material.dart';
import 'package:app_win/home.dart';
import 'package:app_win/utils/constantes.dart' as cons;

class graphics extends StatefulWidget {
  const graphics({super.key});

  @override
  State<graphics> createState() => _graphicsState();
}

class _graphicsState extends State<graphics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Graficas'),
        ),
        body: Stack(
          children: [
            Align(alignment: Alignment.bottomCenter,
              child:
              ElevatedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                },
                style: ElevatedButton.styleFrom(
                  primary: cons.salmon,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                child:
                Text(
                  'Home',
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