import 'package:flutter/material.dart';
import 'package:app_win/addUser.dart';
import 'package:app_win/settings.dart';
import 'package:app_win/graphics.dart';
import 'package:app_win/utils/constantes.dart' as cons;

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: cons.salmon
            ),
              accountName: const Text('Usuario'),
              accountEmail: const Text('correo@corre.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(child: Image.asset('assets/user_icon.png'),),
              ),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Añadir'),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => addUSer())
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Estadisticas'),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => graphics())
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Ajustes'),
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => settings())
              );
            },
          )
        ],
      ),
    );
  }
}
