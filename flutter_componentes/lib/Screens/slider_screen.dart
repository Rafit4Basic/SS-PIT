import 'package:flutter/material.dart';
import 'package:flutter_componentes/themes/app_themes.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _slidervalue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders y checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 100,
              max: 400,
              activeColor: Apptheme.primary,
              divisions: 10,
              value: _slidervalue,
              onChanged: (value) {
                _slidervalue = value;
                setState(() {});
              }),
        ],
      ),
    );
  }
}
