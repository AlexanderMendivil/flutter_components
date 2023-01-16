import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(child: Column(children:  <Widget>[
      const ListTile(
        leading: Icon(Icons.photo_album, color: AppTheme.primary ),
        title: Text("Soy un titulo"),
        subtitle: Text("Culpa enim aliquip magna fugiat mollit fugiat consequat. Consequat nisi minim veniam incididunt quis deserunt et est labore tempor do sit aute. Fugiat adipisicing voluptate mollit commodo duis proident ex nostrud dolor."),
    ),
    Padding(
      padding: const EdgeInsets.only(right:8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        TextButton(onPressed: (){}, child: const Text('Cancel'),),
        TextButton(onPressed: (){}, child: const Text('OK'))
      ],),
    )
    
    ],),);
  }
}