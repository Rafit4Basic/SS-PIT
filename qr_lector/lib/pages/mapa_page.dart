import 'package:flutter/material.dart';
import 'package:qr_lector/models/scan_model.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ScanModel scan = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa'),
      ),
      body: Center(
          // child: Text(scan.valor),
          ),
    );
  }
}
