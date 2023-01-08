import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yoga_app_1/screens/work_out_det.dart';

class YogaBreak extends StatelessWidget {
  const YogaBreak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerModel3>(
      create: (context) => TimerModel3(context),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.iprshealth.com/assets/Uploads/_resampled/CroppedFocusedImageWyI2MTMiLCIzMzgiLCIyOS00MyJd/pexels-photo-588561.jpeg"

                        )
                  )
                ),
              ),

              Container(

                width: MediaQuery.of(context).size.width-2/100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Break Time",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),)

                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "00",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    " : ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Consumer<TimerModel3>(builder: (context, myModel, child) {
                    return Text(
                      myModel.countDown.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    );
                  })
                ],
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {},
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 80),
                      child: Text(
                        "Add + 20 s",
                        style: TextStyle(fontSize: 13, color: Colors.purple),
                      ))),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width - 50,
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "SKIP",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                      ElevatedButton(onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>WorkOutDet()));
                      }, child: Text('PREVIOUS',style: TextStyle
                        (fontWeight: FontWeight.w400,
                          fontSize: 15),))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

class TimerModel3 with ChangeNotifier {
  int countDown = 20;
  MyModel3(context) {
    TimerModel3(context);
  }

  TimerModel3(context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countDown--;
      notifyListeners();
      if (countDown == 0) {
        timer.cancel();
      }
    });
  }
}
