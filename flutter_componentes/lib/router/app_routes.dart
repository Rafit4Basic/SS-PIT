import 'package:flutter/material.dart';
import 'package:flutter_componentes/models/models.dart';
import '../Screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    //MenuOption(route: 'home',name: 'Home Screen',screen: const HomeScreen(),icon: Icons.home_outlined),

    MenuOption(
        route: 'Listview1',
        name: 'Listview tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.adb_sharp),
    MenuOption(
        route: 'Listview2',
        name: 'Listview tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.alt_route_rounded),
    MenuOption(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.account_circle_rounded),
    MenuOption(
        route: 'card',
        name: 'Tarjetas',
        screen: const CardScreen(),
        icon: Icons.sailing_rounded),
    MenuOption(
        route: 'Avatar',
        name: 'Circle avatar',
        screen: const AvatarScreen(),
        icon: Icons.accessibility_new_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.self_improvement),
    MenuOption(
        route: 'inputs',
        name: 'Text  Inputs',
        screen: const InputsScreen(),
        icon: Icons.abc),
    MenuOption(
        route: 'slider',
        name: 'Slider',
        screen: const SliderScreen(),
        icon: Icons.ac_unit_sharp),
    MenuOption(
        route: 'listviewbuilder',
        name: 'Infinite scroll y pull refresh',
        screen: const ListBuilderScreen(),
        icon: Icons.gavel_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  //static Map<String, Widget Function(BuildContext)> routes = {
  //  'home': (BuildContext context) => const HomeScreen(),
  // 'listview2': (BuildContext context) => const Listview2Screen(),
  //'alert': (BuildContext context) => const AlertScreen(),
  //'card': (BuildContext context) => const CardScreen(),
  //};

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
