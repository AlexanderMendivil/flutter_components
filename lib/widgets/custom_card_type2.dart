import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
   
  const CustomCardType2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children:  const <Widget>[
          FadeInImage(placeholder: AssetImage('assets/images/jar-loading.gif'),
           image: NetworkImage('https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
            ),
        ],
      ),
    );
  }
}