import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes{
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
MenuOption(route: 'listview1', icon: Icons.list, name: 'Listview 1', screen: const Listview1Screen()),
MenuOption(route: 'listview2', icon: Icons.list_rounded, name: 'Listview 2', screen: const Listview2Screen()),
MenuOption(route: 'alert', icon: Icons.browse_gallery, name: 'alert', screen: const AlertScreen()),
MenuOption(route: 'card', icon: Icons.card_giftcard, name: 'card', screen: const CardScreen()),
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> AppRoutes = {};
    
    for (var option in menuOptions) {
      AppRoutes.addAll({option.route: (BuildContext context) => option.screen });
    }
    return AppRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'HomeScreen': (BuildContext context) => const HomeScreen(), 
  //       'listview1': (BuildContext context) => const Listview1Screen(), 
  //       'listview2': (BuildContext context) => const Listview2Screen(), 
  //       'alertScreen': (BuildContext context) => const AlertScreen(),
  //       'CardScreen': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => const AlertScreen(),);
       }
}