import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_lector/providers/scan_list_provider.dart';

class DireccionesPage extends StatelessWidget {
  const DireccionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;
    return ListView.builder(
        itemCount: scans.length,
        itemBuilder: (_, i) => ListTile(
              leading: Icon(Icons.map, color: Theme.of(context).primaryColor),
              title: Text(scans[i].valor),
              subtitle: Text(scans[i].id.toString()),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onTap: () => print('abrir vidios del faraón Raaa'),
            ));
  }
}
