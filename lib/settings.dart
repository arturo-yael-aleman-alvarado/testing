import 'package:app_win/graphics.dart';
import 'package:flutter/material.dart';
import 'package:app_win/utils/constantes.dart' as cons;

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ajustes'),
        ),
        body: Stack(
          children: [
            Align(alignment: Alignment.bottomCenter,
              child:
              ElevatedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>graphics()));
                },
                style: ElevatedButton.styleFrom(
                  primary: cons.salmon,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                child:
                Text(
                  'Graficas',
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
