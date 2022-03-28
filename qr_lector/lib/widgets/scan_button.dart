import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_lector/providers/scan_list_provider.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:qr_lector/utils/utils.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.qr_code_2),
      onPressed: () async {
        String barcodeScanRes = "";
        barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#07E700', 'Cancelar', false, ScanMode.QR);
        //barcodeScanRes = 'https://www.google.com/';

        if (barcodeScanRes == '-1') {
          return;
        }

        final scanListProvider =
            Provider.of<ScanListProvider>(context, listen: false);
        scanListProvider.nuevoScan(barcodeScanRes);
        final nuevoScan = await scanListProvider.nuevoScan(barcodeScanRes);
        launchURL(context, nuevoScan);
        //scanListProvider.nuevoScan('geo:15.33,41.66');
      },
    );
  }
}
