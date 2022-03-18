import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_lector/providers/scan_list_provider.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.qr_code_2),
      onPressed: () async {
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#07E700', 'Cancelar', false, ScanMode.QR);
        barcodeScanRes = 'https://xD.com';
        final scanListProvider =
            Provider.of<ScanListProvider>(context, listen: false);
        scanListProvider.nuevoScan(barcodeScanRes);
        scanListProvider.nuevoScan('geo:15.33,41.66');
      },
    );
  }
}
