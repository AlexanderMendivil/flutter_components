import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   final options = const ['Megaman', 'Metal gear', 'Super Smash', 'Final fantasy'];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview 1'),),
      body: ListView(

        children: <Widget> [
          ...options.map((element) => ListTile(
            leading: const Icon(Icons.games),
            title: Text(element),
            trailing: const Icon(Icons.arrow_right),
            ),
            ).toList(),
          ],
      )
    );
  }
}