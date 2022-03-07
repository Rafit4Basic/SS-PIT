import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  void incrementar() {
    counter++;
    setState(() {});
  }

  void decrementar() {
    counter--;
    setState(() {});
  }

  void reiniciar() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontsize50 = TextStyle(fontSize: 50);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador enjarrado - Berenjena Edichon'),
        elevation: 5.2,
      ),
      backgroundColor: const Color.fromARGB(255, 192, 231, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Novias de Leo',
              style: (fontsize50),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 35),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        incrementarfuncion: incrementar,
        decrementarfuncion: decrementar,
        reiniciarfuncion: reiniciar,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function incrementarfuncion;
  final Function decrementarfuncion;
  final Function reiniciarfuncion;

  const CustomFloatingActions({
    Key? key,
    required this.incrementarfuncion,
    required this.decrementarfuncion,
    required this.reiniciarfuncion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.catching_pokemon),
          onPressed: () =>
              incrementarfuncion(), // () => setState(() => counter++),
        ),
        FloatingActionButton(
          child: const Icon(Icons.restart_alt_rounded),
          onPressed: () =>
              reiniciarfuncion(), // () => setState(() => counter = 0),
        ),
        FloatingActionButton(
          child: const Icon(Icons.anchor),
          onPressed: () =>
              decrementarfuncion(), //() => setState(() => counter--),
        ),
      ],
    );
  }
}
