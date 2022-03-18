import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_lector/pages/home_page.dart';
import 'package:qr_lector/providers/scan_list_provider.dart';
import 'package:qr_lector/providers/ui_provider.dart';
import 'pages/mapa_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((_) => UiProvider())),
        ChangeNotifierProvider(create: ((_) => ScanListProvider())),
      ],
      child: MaterialApp(
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomePage(),
          'mapa': (_) => const MapaPage(),
        },
        theme: ThemeData.dark(),
      ),
    );
  }
}
