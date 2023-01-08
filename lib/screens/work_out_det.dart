import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app_1/screens/break.dart';
import 'package:yoga_app_1/screens/ru_ready.dart';

class WorkOutDet extends StatelessWidget {
  const WorkOutDet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModel2>(
      create: (context) => TimerModel2(context),
      child: Scaffold(
          body: Stack(children: [
        Container(
          child: Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://static.toiimg.com/thumb/msid-69885314,imgsize-838631,width-800,height-600,resizemode-75/69885314.jpg"))),
              ),
              Text(
                "Anulom Velom",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 80),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "00",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    " : ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Consumer<TimerModel2>(builder: (context, myModel, child) {
                    return Text(
                      myModel.countdown.toString(),
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    );
                  })
                ]),
              ),
              Spacer(),
              SizedBox(
                height: 40,
              ),
              Consumer<TimerModel2>(
                builder: (context, myModel, child) {
                  return ElevatedButton(
                      onPressed: () {
                        myModel.show();
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Text(
                          "PAUSE",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ));
                },
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Previous",
                          style: TextStyle(fontSize: 18),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => YogaBreak()));
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(fontSize: 18),
                        ))
                  ],
                ),
              ),
              Spacer(),
              Divider(
                thickness: 3,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Anulom Velom",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        Consumer<TimerModel2>(
          builder: (context, myModel,child ) {
            return Visibility(
              visible:myModel.Visible,
                child: Container(
                color: Colors.blueAccent.withOpacity(0.9),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text(
            "PAUSE",
            style: TextStyle(
            fontSize: 40,
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontWeight: FontWeight.bold),
            ),
            OutlinedButton(
            onPressed: () {},
            child: Container(
            width: 180,
            child: Text(
            "RESTART",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.blue),
            textAlign: TextAlign.center,
            ),
            ),
            style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
            ),
            OutlinedButton(
            onPressed: () {},
            child: Container(
            width: 180,
            child: Text(
            "QUIT",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.blue),
            textAlign: TextAlign.center,
            ),
            ),
            style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
            ),
            Consumer<TimerModel2>(
            builder: (context,myModel,child){
            return  OutlinedButton(
            onPressed: () {
            myModel.hide();
            },
            child: Container(
            width: 180,
            child: Text(
            "RESUME",
            style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blue),
            textAlign: TextAlign.center,
            ),

            ),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),);
            },


            )
            ],
            ),
            )
            );
          },

        )
      ])),
    );
  }
}

class TimerModel2 with ChangeNotifier {
  TimerModel2(context) {
    MyTimer2(context);
  }
  int countdown = 30;
  bool Visible = false;


  MyTimer2(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      notifyListeners();

      if (countdown == 0) {
        timer.cancel();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => YogaBreak()));
      }
    });
  }

  void show() {
    Visible = true;
    notifyListeners();
  }

  void hide() {
    Visible = false;
    notifyListeners();
  }
}
