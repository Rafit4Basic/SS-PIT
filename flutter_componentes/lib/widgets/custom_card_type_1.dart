import 'package:flutter/material.dart';
import 'package:flutter_componentes/themes/app_themes.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.accessibility_new,
              color: Apptheme.primary,
            ),
            title: Text('Saquen las morras chidas'),
            subtitle: Text(
                'Quiero perderme contigo como se pierde el horizonte. Como las aves en la noche, como la estrella y los sonidos'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('No wey')),
                TextButton(onPressed: () {}, child: const Text('Jalo')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
