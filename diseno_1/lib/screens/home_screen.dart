import 'package:diseno_1/widgets/background.dart';
import 'package:diseno_1/widgets/card_table.dart';
import 'package:diseno_1/widgets/custom_bottom_navigation.dart';
import 'package:diseno_1/widgets/page_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Esa vaina de crom cambia el tema oscuro o luzoso de la barra de estado
    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: Stack(
        children: const [
          //fondito
          BackGround(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),

          // carta teibolera
          CardTable(),
        ],
      ),
    );
  }
}
