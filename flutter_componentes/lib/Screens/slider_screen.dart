import 'package:flutter/material.dart';
import 'package:flutter_componentes/themes/app_themes.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _slidervalue = 100;
  bool _sliderEnabled = true;
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
            max: 1000,
            activeColor: Apptheme.primary,
            divisions: 10,
            value: _slidervalue,
            onChanged: _sliderEnabled
                ? (value) {
                    _slidervalue = value;
                    setState(() {});
                  }
                : null,
          ),
          /*Checkbox(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              }),
          CheckboxListTile(
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                    _sliderEnabled = value ?? true;
                  })), */
          SwitchListTile(
              activeColor: Apptheme.primary,
              title: const Text('Habilitar barra'),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                    _sliderEnabled = value ?? true;
                  })),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                  image: NetworkImage(
                      'https://www.nicepng.com/png/detail/141-1410948_batman-new-52-png-batman-the-dark-knight.png'),
                  fit: BoxFit.contain,
                  width: _slidervalue),
            ),
          ),
        ],
      ),
    );
  }
}
