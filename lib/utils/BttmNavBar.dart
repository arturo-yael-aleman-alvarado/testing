import 'package:flutter/material.dart';
import 'package:app_win/utils/constantes.dart' as cons;

class BttmNavBar extends StatelessWidget {
  final int currentIndex;
  late  Function(int) onTap;
  BttmNavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      currentIndex: currentIndex,
      selectedItemColor: cons.azul,
    );
  }
}
