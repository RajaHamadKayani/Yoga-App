import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app_1/screens/work_out_det.dart';

class AreUReady extends StatelessWidget {
  const AreUReady({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModel>(
      create: (context) => TimerModel(context),
      child: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: MediaQuery.of(context).size.height/2-100,),

                Text(

                  "Are U Ready ?",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40,),
                Consumer<TimerModel>(builder: (context, myModel, child) {
                  return Text(myModel.countdown.toString(),style: TextStyle
                    (fontWeight: FontWeight.bold,
                  fontSize: 48),);

                }),
                Divider(thickness: 3,),
                Align(
                  alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding:EdgeInsets.symmetric(horizontal: 15, vertical: 10),

                      child: Text("Next: Anulom Velom", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TimerModel with ChangeNotifier {
  TimerModel(context) {
    MyTimer(context);


  }
  int countdown = 5;
  MyTimer(context) async {
    Timer.periodic(
        Duration(
          seconds: 1,
        ), (timer) {
      countdown--;
      notifyListeners();

      if(countdown==0)
        {
          timer.cancel();
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>WorkOutDet()));
        }



    });
  }
}
