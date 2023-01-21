import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: (){          
         }, 
         child: const Padding(
           padding: EdgeInsets.all(20),
           child: Text('Mostrar alerta', style: TextStyle(fontSize: 15 ),),
         )),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        onPressed: (){
          Navigator.pop(context);
      },
        child: const Icon(Icons.close)),
    );
  }
}