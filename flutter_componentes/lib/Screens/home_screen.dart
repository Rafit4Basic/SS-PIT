import 'package:flutter/material.dart';
import 'package:flutter_componentes/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes perrones'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(AppRoutes.menuOptions[index].icon),
                title: Text(AppRoutes.menuOptions[index].name),
                onTap: () {
                  //  final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
                  Navigator.pushNamed(
                      context, AppRoutes.menuOptions[index].route);
                  //Navigator.pushNamed(context, 'alert');
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
