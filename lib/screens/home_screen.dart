import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes de Flutter'),),
      body: ListView.separated(itemBuilder: (context, index) => ListTile(
        leading:  Icon(AppRoutes.menuOptions[index].icon),
        trailing: const Icon(Icons.arrow_right),
        title: Text(AppRoutes.menuOptions[index].name),
        onTap: () {
        //  final route = MaterialPageRoute(builder: (context) => const Listview1Screen(),);
        //   Navigator.push(context, route);
        Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
        }
        ,),
        separatorBuilder: (__, _) => const Divider() , itemCount: AppRoutes.menuOptions.length)
    );
  }
}