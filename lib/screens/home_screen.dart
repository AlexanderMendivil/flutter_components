import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes de Flutter'),),
      body: ListView.separated(itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.access_time_filled),
        trailing: const Icon(Icons.arrow_right),
        title: const Text('Nombre de ruta'),
        onTap: () {
        //  final route = MaterialPageRoute(builder: (context) => const Listview1Screen(),);
        //   Navigator.push(context, route);
        Navigator.pushNamed(context, 'listview1');
        }
        ,),
        separatorBuilder: (__, _) => const Divider() , itemCount: 10)
    );
  }
}