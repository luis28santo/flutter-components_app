import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 100,
            max: 500,
            activeColor: AppTheme.primaryColor,
            // divisions: 10,
            value: _sliderValue,
            onChanged: _sliderEnable
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          // Checkbox(
          //     value: _sliderEnable,
          //     onChanged: (value) {
          //       _sliderEnable = value ?? true;
          //       setState(() {});
          //     }),
          // CheckboxListTile(
          //   activeColor: AppTheme.primaryColor,
          //   title: const Text('Habilitar Slider'),
          //   value: _sliderEnable,
          //   onChanged: (value) {
          //     _sliderEnable = value ?? true;
          //     setState(() {});
          //   },
          // ),
          Switch.adaptive(
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
          ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primaryColor,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image(
                    image: const NetworkImage('https://i.pinimg.com/originals/97/c7/f8/97c7f8a84f81d1526dd95e64c0ebeafb.png'),
                    fit: BoxFit.contain,
                    width: _sliderValue,
                  ),
                  Image(
                    image: const NetworkImage('https://www.pngplay.com/wp-content/uploads/12/Dragon-Ball-Z-Transparent-Background.png'),
                    fit: BoxFit.contain,
                    width: _sliderValue,
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
