import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_lector/pages/direcciones_page.dart';
import 'package:qr_lector/pages/mapas_page.dart';
import 'package:qr_lector/providers/db_provider.dart';
import 'package:qr_lector/providers/scan_list_provider.dart';
import 'package:qr_lector/providers/ui_provider.dart';
import 'package:qr_lector/widgets/custom_navigatorbar.dart';
import 'package:qr_lector/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        actions: [
          IconButton(
              icon: const Icon(Icons.delete_forever_rounded), onPressed: () {}),
        ],
      ),
      body: const _HomePAgeBody(),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: const ScanButton(),
    );
  }
}

class _HomePAgeBody extends StatelessWidget {
  const _HomePAgeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOption;
//////////////////////////////Ubicación de
    DBProvider.db.database;

    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);

    switch (currentIndex) {
      case 0:
        scanListProvider.cargarScanPorTipo('geo');
        return const MapasPage();

      case 1:
        scanListProvider.cargarScanPorTipo('http');
        return const DireccionesPage();

      default:
        return const MapasPage();
    }
  }
}
