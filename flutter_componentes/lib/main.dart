import 'package:flutter/material.dart';
import 'package:flutter_componentes/router/app_routes.dart';
import 'package:flutter_componentes/themes/app_themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: const CardScreen(),

      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
      theme: ThemeData.dark().copyWith(
          //color prijmario
          primaryColor: Apptheme.primary,
          //appbar
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(255, 0, 167, 0),
            elevation: 0,
          )),
    );
  }
}
