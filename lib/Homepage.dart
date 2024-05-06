import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:const Text("QuizApp"),
      centerTitle:true ),
     body:Column(
       children:[
       const Expanded (child:  Text( "من الكتابات الدينيه التي ظهرت في عصر الدوله القديمه هي..."),),

    Expanded(
    child: ListView.builder(
    itemCount:4,
    itemBuilder:(BuildContext context, int index){
    return MaterialButton(
    onPressed: (){},
    child: const Text("data",style:TextStyle(color:Colors.black),
    ),


    );

    }

     ),


    ),
      ]
    ),

    ); }
}







