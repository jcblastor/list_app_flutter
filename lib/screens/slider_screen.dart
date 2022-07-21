import 'package:flutter/material.dart';

import 'package:app_list/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _sliderValue,
            activeColor: AppTheme.primary,
            onChanged: _isEnabled
                ? (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  }
                : null,
          ),
          // checkbox opcion 1
          Checkbox(
            value: _isEnabled,
            onChanged: (value) {
              setState(() {
                _isEnabled = value ?? true;
              });
            },
          ),
          // checkbox opcion 2
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _isEnabled,
            onChanged: (value) {
              setState(() {
                _isEnabled = value ?? true;
              });
            },
          ),
          // checkbox opcion 3
          Switch(
            activeColor: AppTheme.primary,
            value: _isEnabled,
            onChanged: (value) {
              setState(() {
                _isEnabled = value;
              });
            },
          ),
          // checkbox opcion 4
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _isEnabled,
            onChanged: (value) {
              setState(() {
                _isEnabled = value;
              });
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://pngimg.com/uploads/deadpool/deadpool_PNG31.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
