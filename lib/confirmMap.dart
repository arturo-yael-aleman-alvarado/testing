import 'package:flutter/material.dart';
import 'package:app_win/map.dart';
import 'package:app_win/utils/constantes.dart' as cons;
import 'package:zoom_widget/zoom_widget.dart';

class confirmMap extends StatefulWidget {
  const confirmMap({super.key});

  @override
  State<confirmMap> createState() => _confirmMapState();
}

class _confirmMapState extends State<confirmMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Confirma Mapa'),
        ),
        body: Stack(
          children: [
            Zoom(
              initTotalZoomOut: true,
              child: Center(
                child: FlutterLogo(
                  size: 1000,
                ),
              ),
            ),
            Align(alignment: Alignment.bottomCenter,
              child:
              ElevatedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>map()));
                },
                style: ElevatedButton.styleFrom(
                  primary: cons.salmon,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                child:
                Text(
                  'Mapa',
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