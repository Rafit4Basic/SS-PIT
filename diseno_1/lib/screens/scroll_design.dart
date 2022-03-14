import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        //physics: BouncingScrollPhysics(),
        children: const [
          Page1(),
          Page2(),
          //Page1(),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background(),
        MainContent(),
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 0, 0, 0));
    return SafeArea(
      //bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '50° Gay Lussac',
            style: textStyle,
          ),
          const Text(
            'Hoy es: Lunes :)',
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_double_arrow_down_sharp,
            size: 100,
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,

        //height: double.infinity,
        child: const Image(image: AssetImage('assets/db1.jpg')));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 56, 166, 255),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text('Bienvenide',
                  style: TextStyle(color: Colors.white, fontSize: 30))),
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 250, 133, 0),
            shape: const StadiumBorder(),
          ),
        ),
      ),
    );
  }
}
