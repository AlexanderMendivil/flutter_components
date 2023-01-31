import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIos(BuildContext context){
    showCupertinoDialog(context: context, builder: (context){
      
      return CupertinoAlertDialog(
        title: const Text('Titulo'),
      content: Column(
      mainAxisSize: MainAxisSize.min,
      children: const <Widget>[
        Text('Este es el contenido'),
        SizedBox(height: 10,),
        FlutterLogo(size: 100,),
            ],
          ),
          actions: [
            TextButton(onPressed: ()=> Navigator.pop(context), child: const Text('Cancelar', style: TextStyle(color: Colors.red),)),
            TextButton(onPressed: ()=> Navigator.pop(context), child: const Text('OK'))
          ],
        );
    });
  }  

  void displayDialogAndroid(BuildContext context){
    showDialog( 
      // barrierDismissible: true, 
      context: context, 
      builder: ( context ) {return  AlertDialog(
      elevation: 5,
      title: const Text('titulo'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Column(
      mainAxisSize: MainAxisSize.min,
      children: const <Widget>[
        Text('Este es el contenido'),
        SizedBox(height: 10,),
        FlutterLogo(size: 100,),
            ],
          ),
          actions: [
            TextButton(onPressed: ()=> Navigator.pop(context), child: const Text('Cancelar', style: TextStyle(color: Colors.red),)),
            TextButton(onPressed: ()=> Navigator.pop(context), child: const Text('OK'))
          ],
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: ElevatedButton(
          //onPressed: ()=> displayDialogAndroid( context ),
          //onPressed: ()=> displayDialogIos( context ),
          onPressed: ()=> Platform.isAndroid ? displayDialogAndroid( context ) : displayDialogIos( context ),
 
         child: const Padding(
           padding: EdgeInsets.all(20),
           child: Text('Mostrar alerta', style: TextStyle(fontSize: 15 ),),
         )),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        onPressed: ()=> Navigator.pop(context),
        child: const Icon(Icons.close)),
    );
  }
}