import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final opciones = const ['leche con chocolate', 'cereal', 'papas'];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview tipo 2'),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(opciones[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 177, 132, 255),
                  ),
                  onTap: () {
                    //final juego = opciones[index];
                    //print(juego);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: opciones.length));
  }
}
