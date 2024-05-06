import 'package:flutter/material.dart';
    class homeScreen extends StatelessWidget {
      const homeScreen({super.key});
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Azkarelsaba7"),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              Container(
                width: 50,
                height:100,
                color:Colors.white,
                 padding: const EdgeInsets.all(10),
                child:Text("اذكار الصباح",
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:20,
                  color: Colors.black,
                )
          )
              ),
            ],
          ),
        );
      }
    }
    