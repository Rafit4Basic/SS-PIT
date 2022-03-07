import 'package:flutter/material.dart';
import 'package:flutter_componentes/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            name: 'oie k riko',
            imageUrl:
                'https://wallup.net/wp-content/uploads/2016/01/44348-comics-Spawn.jpg',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'http://cdn26.us1.fansshare.com/photo/spawn/spawn-wallpaper-wallpaper-1893465057.jpg',
          ),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'http://cdn30.us1.fansshare.com/image/spawn/character-647754462.jpg',
          ),
        ],
      ),
    );
  }
}
