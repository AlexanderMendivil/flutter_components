import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: Listview1Screen()
      initialRoute: 'HomeScreen',
       routes: {
        'HomeScreen': (BuildContext context) => const HomeScreen(), 
        'listview1': (BuildContext context) => const Listview1Screen(), 
        'listview2': (BuildContext context) => const Listview2Screen(), 
        'alertScreen': (BuildContext context) => const AlertScreen(),
        'CardScreen': (BuildContext context) => const CardScreen(),
       },
       onGenerateRoute: (settings) {
        print(settings);
       } ,
    );
    
  }
}