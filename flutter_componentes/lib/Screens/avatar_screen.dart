import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Queso'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('Q'),
              backgroundColor: Color.fromARGB(255, 243, 142, 193),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 250,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/originals/2f/bd/52/2fbd527eadffff5e0ba827ef54f6fd8c.jpg'),
        ),
      ),
    );
  }
}
