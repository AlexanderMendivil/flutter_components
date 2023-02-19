import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sliders & checks'),),
      body: Column(
         children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnable ? ( value ){
              _sliderValue = value;
              setState(() {
                
              });
          }: null ),

          Checkbox(value: _sliderEnable, onChanged: ( value ){
            _sliderEnable = value ??  true;
            setState(() {});
          }),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable, 
            onChanged: ( value ){
            _sliderEnable = value ??  true;
            setState(() {});
          }),
          Switch(value: _sliderEnable, onChanged: (value){
      
            _sliderEnable = value;
            setState(() {});
          }),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable,
             onChanged: (value){
            _sliderEnable = value;
            setState(() {});
          }),
           Expanded(
             child: SingleChildScrollView(
               child: Image(image: const NetworkImage("https://cdn.shopify.com/s/files/1/0051/8805/9206/products/dc-deluxe-detective-comics-80-anios-batman-portada-720_530x.jpg?v=1563548396"),
                       fit: BoxFit.contain,
                       width: _sliderValue,),
             ),
           )
         ],
      ),
    );
  }
}