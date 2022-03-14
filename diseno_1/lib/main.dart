import 'package:diseno_1/screens/home_screen.dart';
import 'package:diseno_1/screens/scroll_design.dart';
import 'package:flutter/material.dart';

import 'screens/basic_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_screen': (_) => const ScrollScreen(),
        'home_screen': (_) => const HomeScreen(),
      },
    );
  }
}
