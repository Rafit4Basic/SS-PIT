import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.anchor),
          label: 'Salchipapas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.adb_outlined),
          label: 'Papas locas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.adobe),
          label: 'Mangoneada',
        ),
      ],
    );
  }
}
