
import 'package:app_win/map.dart';
import 'package:flutter/material.dart';

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  int _selectedIndex = 0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuarios'),
      ),

       body: Column(
        children: [
          // Tres rectángulos
          //otra cosa x
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
       children: [

          Container(
            width: MediaQuery.of(context).size.width * 0.48,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nombre'),
                Text('correo'),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            child: Center(
          child: Icon(
            Icons.delete,
            color: Colors.red, // Icono de bote de basura rojo
          ),
            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            child: Center(
              child: Icon(Icons.edit),
            ),
          ),
        ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
       children: [

          Container(
            width: MediaQuery.of(context).size.width * 0.48,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nombre'),
                Text('correo'),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            child: Center(
          child: Icon(
            Icons.delete,
            color: Colors.red, // Icono de bote de basura rojo
          ),
            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            child: Center(
              child: Icon(Icons.edit),
            ),
          ),
        ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
       children: [

          Container(
            width: MediaQuery.of(context).size.width * 0.48,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nombre'),
                Text('correo'),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            child: Center(
          child: Icon(
            Icons.delete,
            color: Colors.red, // Icono de bote de basura rojo
          ),
            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            child: Center(
              child: Icon(Icons.edit),
            ),
          ),
        ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
       children: [

          Container(
            width: MediaQuery.of(context).size.width * 0.48,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nombre'),
                Text('correo'),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            child: Center(
          child: Icon(
            Icons.delete,
            color: Colors.red, // Icono de bote de basura rojo
          ),
            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            child: Center(
              child: Icon(Icons.edit),
            ),
          ),
        ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
       children: [

          Container(
            width: MediaQuery.of(context).size.width * 0.48,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nombre'),
                Text('correo'),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            child: Center(
          child: Icon(
            Icons.delete,
            color: Colors.red, // Icono de bote de basura rojo
          ),
            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            child: Center(
              child: Icon(Icons.edit),
            ),
          ),
        ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
       children: [

          Container(
            width: MediaQuery.of(context).size.width * 0.48,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nombre'),
                Text('correo'),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            child: Center(
          child: Icon(
            Icons.delete,
            color: Colors.red, // Icono de bote de basura rojo
          ),
            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.08,
            child: Center(
              child: Icon(Icons.edit),
            ),
          ),
        ],
                ),
              ),
            ],
          ),  
]
      ),
    
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Usuario',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Flecha',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            if(_selectedIndex==1){
              Navigator.push(context, MaterialPageRoute(builder: (context) => map()));
            }
          });
        },
      ),
    );
  }
}