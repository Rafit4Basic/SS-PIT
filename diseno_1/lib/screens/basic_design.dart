import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/paisaje1.jpg')),
          const Title(),
          //sección pa botones
          const ButtonSection(),
          //sección pal muchotexto xd
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const Text(
                'He once had to be all he could be. Now hes nothing for no one nowhere to see. Funny thing, hes like you & me. Its a funny thing, a funny thing. Tears streak his solemn stare. Abandoned for wreckage nobody cares. No one knew what would happen there. No one spoke no one even dared. Dont ask what you can do for your country. Ask what your country can do for you'),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Paisaje perrón',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'por ahí, en algún lugar',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.stars_outlined),
          const Text('sum 41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(
            icono: Icons.call,
            texto: ('Shamar'),
          ),
          CustomButton(
            icono: Icons.rocket_outlined,
            texto: ('Shegar'),
          ),
          CustomButton(
            icono: Icons.share,
            texto: ('Compartí'),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icono;
  final String texto;
  const CustomButton({
    Key? key,
    required this.icono,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icono,
          color: Colors.blue,
          size: 40,
        ),
        Text(
          texto,
          style: const TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
