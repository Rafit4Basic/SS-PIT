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
          children: [
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
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(
              this.icono,
              size: 35,
              color: Colors.white,
            ),
            radius: 30,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            this.texto,
            style: TextStyle(color: this.color, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
