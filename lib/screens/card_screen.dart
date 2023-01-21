import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card widget'),),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const <Widget>[
        CustomCardType1(),
        SizedBox(height: 10,),
        CustomCardType2(imageUrl: 'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png',description: 'Un hermoso paisaje',),
        SizedBox(height: 10,),
        CustomCardType2(imageUrl: 'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg'),
        SizedBox(height: 10,),
        CustomCardType2(imageUrl: 'https://i.ytimg.com/vi/c7oV1T2j5mc/maxresdefault.jpg', description: 'Muy bonito',),
      ],),
    );
  }
}

