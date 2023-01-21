import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
   
  const CustomCardType2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.4),
      child: Column(
        children: <Widget>[
          const FadeInImage(placeholder: AssetImage('assets/images/jar-loading.gif'),
           image: NetworkImage('https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
           width: double.infinity,
           height: 230,
           fit: BoxFit.fill,
           fadeInDuration:  Duration(microseconds: 300),
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: const Text('Un hermoso paisaje')
              )
        ],
      ),
    );
  }
}