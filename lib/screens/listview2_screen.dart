import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   final options = const ['Megaman', 'Metal gear', 'Super Smash', 'Final fantasy'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview 2'), elevation: 10, backgroundColor: Colors.yellow,),
      body: ListView.separated(
        
        itemBuilder: (context, index) => ListTile(
          leading: const Icon( Icons.games_outlined ), 
          title: Text( options[index],), 
          trailing: const Icon(Icons.arrow_right),
          onTap: () {
            
          },
          ),
          

        separatorBuilder: (_, __) => const Divider(), 
        itemCount: options.length)
    );
  }
}