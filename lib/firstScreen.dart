
import 'package:flutter/material.dart';

class firstScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.blueAccent,
      body: SafeArea(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              width: 160,
              height: 140,
              child: Center(
                child: Text('XO\nGame',style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing:8 ),
                  textAlign: TextAlign.center,),
              ),

            ),
            Text('Designed by\nNourhan Elhamy',style: TextStyle(color: Colors.white
                ,fontSize: 20,fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),

    );
  }
}