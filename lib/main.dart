 import 'package:flutter/material.dart';
 import 'package:untitled1/gameScreen.dart';
  main(){
     runApp(MyApp());
   }
   class MyApp extends StatelessWidget {
     @override
    Widget build(BuildContext context) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
           home: gamePlayScrean()
       );
     }
}
