import 'package:flutter/material.dart';

class gamePlayScrean extends StatefulWidget{
  @override
  State<gamePlayScrean> createState() => _gamePlayScreanState();
}

class _gamePlayScreanState extends State<gamePlayScrean> {
  String X = '';
  int xScore = 0;
  int oScore = 0;
  int press = 0;
  List click = ['', '', '', '', '', '', '', '', ''];
  bool isXTurn = true;
  write(int index){
    if(click[index] == "") {

      click[index] = isXTurn ? 'X' : "O";
      isXTurn = !isXTurn;
    }

  }
  winner(){
    press++;
    if(click[0]==click[1]&&click[1]==click[2]&&click[0]!=""){
      click = ['', '', '', '', '', '', '', '', ''];
      !isXTurn?xScore++:oScore++;
     press=0;
    }
    else if(click[3]==click[4]&&click[4]==click[5]&&click[3]!=''){
      click = ['', '', '', '', '', '', '', '', ''];
      !isXTurn?xScore++:oScore++;
     press=0;

    }
    else if(click[6]==click[7]&&click[6]==click[8]&&click[6]!=''){
      click = ['', '', '', '', '', '', '', '', ''];
      !isXTurn?xScore++:oScore++;
      press= 0;

    }
    else if(click[0]==click[3]&&click[0]==click[6]&&click[0]!=''){
      click = ['', '', '', '', '', '', '', '', ''];
      !isXTurn?xScore++:oScore++;
      press= 0;
    }
    else if(click[1]==click[4]&&click[1]==click[7]&&click[1]!='') {
      click = ['', '', '', '', '', '', '', '', ''];
      !isXTurn?xScore++:oScore++;
      press=0;
    }
    else if(click[2]==click[5]&&click[2]==click[8]&&click[2]!=''){
      click = ['', '', '', '', '', '', '', '', ''];
      !isXTurn?xScore++:oScore++;
      press=0;
    }
    else if(click[0]==click[4]&&click[0]==click[8]&&click[0]!=''){
      click = ['', '', '', '', '', '', '', '', ''];
      !isXTurn?xScore++:oScore++;
     press=0;
    }
    else if(click[2]==click[4]&&click[2]==click[6]&&click[2]!=''){
      click = ['', '', '', '', '', '', '', '', ''];
      !isXTurn?xScore++:oScore++;
      press=0;
    }
    else if(press==9) {
    press=0;
      click = ['', '', '', '', '', '', '', '', ''];

    }



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(

            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'player 1 \n $xScore', style: TextStyle(fontSize: 30,fontFamily: 'PlaypenSans',fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,),
                        ),
                        Expanded(
                          child: Text(
                            'player 2 \n $oScore', style: TextStyle(fontSize: 30,fontFamily: 'PlaypenSans',fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,),
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(

                          child: InkWell(
                            onTap: () {
                              winner();
                              write(0);
                              setState(() {

                              });
                            },
                            child: Container(
                              child:
                              Center(
                                child: Text(click[0], textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 45,
                                      fontFamily: 'PlaypenSans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amberAccent),),
                              ),


                              margin: EdgeInsets.all(10),
                              height: 140,
                              width: 110,

                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                border: Border.all(color: Colors.lime,
                                    width: 3),
                                borderRadius: BorderRadius.circular(30),

                              ),
                            ),
                          ),

                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              write(1);
                              winner();
                              setState(() {

                              });
                            },
                            child: Container(

                              child: Center(
                                child: Text(click[1], textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 45,
                                      fontFamily: 'PlaypenSans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amberAccent),),
                              )
                              ,
                              margin: EdgeInsets.all(10),
                              height: 140,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(color: Colors.lime,
                                      width: 3),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              write(2);
                              winner();

                              setState(() {

                              });
                            },
                            child: Container(

                              child: Center(
                                child: Text(click[2], textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 45,
                                      fontFamily: 'PlaypenSans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amberAccent),),
                              )
                              ,

                              margin: EdgeInsets.all(10),
                              height: 140,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(color: Colors.lime,
                                      width: 3),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
                  , Expanded(
                    child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                write(3);
                                winner();


                                setState(() {

                                });
                              },
                              child: Container(

                                child: Center(
                                  child: Text(click[3], textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 45,
                                        fontFamily: 'PlaypenSans',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amberAccent),),
                                )
                                ,

                                margin: EdgeInsets.all(10),
                                height: 140,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    border: Border.all(color: Colors.lime,
                                        width: 3),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                              ),

                            ),

                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                write(4);
                                winner();

                                setState(() {

                                });
                              },
                              child: Container(

                                child: Center(
                                  child: Text(
                                    click[4], textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 45,
                                        fontFamily: 'PlaypenSans',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amberAccent),),
                                )
                                ,

                                margin: EdgeInsets.all(10),
                                height: 140,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    border: Border.all(color: Colors.lime,
                                        width: 3),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                              ),

                            ),

                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {

                                });
                                write(5);
                                winner();

                              },
                              child: Container(

                                child: Center(
                                  child: Text(
                                    click[5], textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 45,
                                        fontFamily: 'PlaypenSans',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amberAccent),),
                                )
                                ,

                                margin: EdgeInsets.all(10),
                                height: 140,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    border: Border.all(color: Colors.lime,
                                        width: 3),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                              ),

                            ),

                          ),
                        ]
                    ),




                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(

                          child: InkWell(
                            onTap: () {
                              write(6);
                              winner();
                              setState(() {

                              });
                            },
                            child: Container(
                              child:
                              Center(
                                child: Text(click[6], textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 45,
                                      fontFamily: 'PlaypenSans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amberAccent),),
                              )
                              ,

                              margin: EdgeInsets.all(10),
                              height: 140,
                              width: 110,

                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                border: Border.all(color: Colors.lime,
                                    width: 3),
                                borderRadius: BorderRadius.circular(30),

                              ),
                            ),
                          ),

                        ),


                        Expanded(
                          child: InkWell(
                            onTap: () {
                              write(7);
                              winner();

                              setState(() {

                              });
                            },
                            child: Container(

                              child: Center(
                                child: Text(click[7], textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 45,
                                      fontFamily: 'PlaypenSans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amberAccent),),
                              )
                              ,

                              margin: EdgeInsets.all(10),
                              height: 140,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(color: Colors.lime,
                                      width: 3),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              write(8);
                              winner();

                              setState(() {

                              });
                            },
                            child: Container(

                              child: Center(
                                child: Text(click[8], textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 45,
                                      fontFamily: 'PlaypenSans',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amberAccent),),
                              )
                              ,

                              margin: EdgeInsets.all(10),
                              height: 140,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  border: Border.all(color: Colors.lime,
                                      width: 3),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )


                ])));
  }

}