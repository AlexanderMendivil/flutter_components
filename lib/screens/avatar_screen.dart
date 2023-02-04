import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions:   <Widget>[
           Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.amber[900],
              child: const Text('SL'),
            ),
          )
          ],
        ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://blog.es.playstation.com/tachyon/sites/14/2022/06/adf0c6e3da060a9f9581c12eff047a48668fe616.jpg'),
         ),
      ),
    );
  }
}