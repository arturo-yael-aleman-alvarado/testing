import 'package:flutter/material.dart';
import 'package:app_win/addUser.dart';
import 'package:app_win/home.dart';
import 'package:app_win/confirmMap.dart';
import 'package:app_win/utils/constantes.dart' as cons;

class userInformation extends StatefulWidget {
  const userInformation({super.key});

  @override
  State<userInformation> createState() => _userInformationState();
}

class _userInformationState extends State<userInformation> {
  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Informacion Usuario'),
        ),
        body: Stack(
          children: [
            Align(alignment: Alignment.bottomCenter,
              child:
              ElevatedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>addUSer()));
                },
                style: ElevatedButton.styleFrom(
                  primary: cons.salmon,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                child:
                Text(
                  'Agregar Usuario',
                  style: TextStyle(
                      color: cons.blanco,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Usuario'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Mapa'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_forward),
              label: 'Flecha'
          )
        ],
        currentIndex: _selectedindex,
        selectedItemColor: cons.azul,
        onTap: (int index){
          setState(() {
            _selectedindex = index;
            if(_selectedindex == 0){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
            }
            if(_selectedindex == 1){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>confirmMap()));
            }
          });
        },
      ),
    );
  }
}
