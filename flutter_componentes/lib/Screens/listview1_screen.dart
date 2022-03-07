import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final opciones = const ['leche con chocolate', 'cereal', 'papas'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview tipo 1'),
        ),
        body: ListView(
          children: [
            ...opciones
                .map((juego) => ListTile(
                      title: Text(juego),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ))
                .toList(),
          ],
        ));
  }
}
