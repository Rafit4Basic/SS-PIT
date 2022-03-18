import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_lector/providers/scan_list_provider.dart';
import 'package:qr_lector/utils/utils.dart';

class ScanTiles extends StatelessWidget {
  final String tipo;
  const ScanTiles({Key? key, required this.tipo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;
    return ListView.builder(
        itemCount: scans.length,
        itemBuilder: (_, i) => Dismissible(
              key: UniqueKey(),
              background: Container(
                color: Colors.redAccent,
              ),
              onDismissed: (DismissDirection direction) {
                Provider.of<ScanListProvider>(context, listen: false)
                    .borrarScanPorId(scans[i].id!);
              },
              child: ListTile(
                leading: Icon(tipo == 'http' ? Icons.link : Icons.location_on,
                    color: Colors.cyanAccent),
                title: Text(scans[i].valor),
                subtitle: Text(scans[i].id.toString()),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.cyanAccent,
                ),
                onTap: () => launchURL(context, scans[i]),
              ),
            ));
  }
}
