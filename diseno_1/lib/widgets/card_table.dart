import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Table(
          children: const [
            TableRow(children: [
              _SingleCard(
                color: Colors.blue,
                icono: Icons.border_all,
                texto: 'Windows xD',
              ),
              _SingleCard(
                color: Colors.purple,
                icono: Icons.directions_bus,
                texto: 'Camioneros eteros',
              ),
            ]),
            TableRow(children: [
              _SingleCard(
                color: Colors.green,
                icono: Icons.earbuds_sharp,
                texto: 'Solipsismo xD',
              ),
              _SingleCard(
                color: Colors.yellow,
                icono: Icons.face_rounded,
                texto: 'Sin ideas',
              ),
            ]),
            TableRow(children: [
              _SingleCard(
                color: Colors.orangeAccent,
                icono: Icons.qr_code_scanner_outlined,
                texto: 'Desafío xD',
              ),
              _SingleCard(
                color: Colors.white30,
                icono: Icons.radio_button_checked_outlined,
                texto: 'Diseño gei xD',
              ),
            ]),
            TableRow(children: [
              _SingleCard(
                color: Colors.deepOrangeAccent,
                icono: Icons.pages_outlined,
                texto: 'Alfombras xD',
              ),
              _SingleCard(
                color: Colors.black,
                icono: Icons.table_bar,
                texto: 'Guerferchicolistán xD',
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icono;
  final Color color;
  final String texto;

  const _SingleCard(
      {Key? key, required this.icono, required this.color, required this.texto})
      : super(key: key);
  @override
  ///////////////////////////////////Widget extraído como variable
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icono,
            size: 35,
            color: Colors.white,
          ),
          radius: 30,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          texto,
          style: TextStyle(color: color, fontSize: 20),
        ),
      ],
    );

    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
