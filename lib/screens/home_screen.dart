import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes de Flutter'),),
      body: ListView.separated(itemBuilder: (context, index) => ListTile(
        leading:  Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary,),
        trailing: const Icon(Icons.arrow_right, color: AppTheme.primary,),
        title: Text(AppRoutes.menuOptions[index].name),
        onTap: () {
        Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
        }
        ,),
        separatorBuilder: (__, _) => const Divider() , itemCount: AppRoutes.menuOptions.length)
    );
  }
}