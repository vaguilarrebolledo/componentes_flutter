import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

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
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              //divisions: 10,
              value: _sliderValue,
              onChanged: _sliderEnable
                  ? (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    }
                  : null),
          // Checkbox(
          //     value: _sliderEnable,
          //     onChanged: (value) {
          //       _sliderEnable = value ?? true;
          //       setState(() {});
          //     }),
          CheckboxListTile(
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) {
                setState(() {
                  _sliderEnable = value ?? true;
                });
              }
          ),
          
          // Switch(
          //   value: _sliderEnable, 
          //   onChanged: (value) {
          //       setState(() {
          //         _sliderEnable = value ?? true;
          //       });
          //     }
          // ),
          SwitchListTile.adaptive(

             title: const Text('Habilitar Slider'),
             activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) {
                setState(() {
                  _sliderEnable = value;
                });
              }
            
          ),

          const AboutListTile(),
          
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'http://images1.wikia.nocookie.net/__cb20110115134529/batman/images/f/f8/TDKBatman12.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
