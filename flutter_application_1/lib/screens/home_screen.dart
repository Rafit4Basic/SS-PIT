// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontsize50 = TextStyle(fontSize: 50);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Era yesero el viejón'),
        elevation: 5.2,
      ),
      backgroundColor: const Color.fromARGB(255, 214, 239, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Tiene cara de bala',
              style: (fontsize50),
            ),
            Text(
              'Eso lo asegura el viejo',
              style: TextStyle(fontSize: 35),
            ),
            Text(
              'Y lo respalda el talento',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.catching_pokemon),
        onPressed: () {
          print('xD');
        },
      ),
    );
  }
}
