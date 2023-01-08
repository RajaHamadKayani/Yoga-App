import 'package:flutter/material.dart';
import 'package:yoga_app_1/custom_widgets/custom_drawer.dart';
import 'package:yoga_app_1/screens/setup.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.more_horiz_outlined),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CustomDrawer()));
          },
        ),
        actions: [
          CircleAvatar(
            child: Icon(
              Icons.notifications,
              color: Colors.deepOrange,
            ),
          )
        ],
        title: Text(
          "My Yoga App",
          selectionColor: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(50, 80, 50, 50),
              decoration: BoxDecoration(color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("1"),
                      Text("Streak"),
                    ],
                  ),
                  Column(
                    children: [Text("179"), Text("KCAL")],
                  ),
                  Column(
                    children: [
                      Text("12"),
                      Text("Minutes"),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 3,
              indent: 25,
              endIndent: 25,
              color: Colors.grey,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Positioned(
                      right: 20,
                      left: 10,
                      child: Text(
                        "Yoga For All",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => StartUp()));
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(20, 15, 20, 50),
                                height: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1220&q=80"))),
                              ),
                            ),
                          ]),
                      Positioned(
                          right: 20,
                          left: 30,
                          top: 20,
                          child: Text(
                            "Yoga For Beginners",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      Positioned(
                          right: 20,
                          top: 45,
                          left: 30,
                          child: Text(
                            "Last Time Exercised: 20 Jan/2022",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          )),
                      Positioned(
                          right: 20,
                          top: 60,
                          left: 30,
                          child: Text(
                            "Difficulty Level: 2",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          )),
                      Positioned(
                          right: 20,
                          top: 75,
                          left: 30,
                          child: Text(
                            "Duration:20 minutes",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ))
                    ],
                  ),
                  Stack(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 2, 20, 50),
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://www.kreedon.com/wp-content/uploads/2022/03/sunsetyoga-2_647_062115121022-696x392.jpg.webp"))),
                            ),
                          ]),
                      Positioned(
                          right: 20,
                          left: 30,
                          top: 20,
                          child: Text(
                            "10 Minutes Yoga",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      Positioned(
                          right: 20,
                          top: 45,
                          left: 30,
                          child: Text(
                            "Last Time Exercised: 20 Jan/2022",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          )),
                      Positioned(
                          right: 20,
                          top: 60,
                          left: 30,
                          child: Text(
                            "Difficulty Level: 2",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          )),
                      Positioned(
                          right: 20,
                          top: 75,
                          left: 30,
                          child: Text(
                            "Duration:20 minutes",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ))
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(
                              "Yoga For Students",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 2, 20, 50),
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://www.iprshealth.com/assets/Uploads/_resampled/CroppedFocusedImageWyI2MTMiLCIzMzgiLCIyOS00MyJd/pexels-photo-588561.jpeg"))),
                            ),
                          ]),
                      Positioned(
                          right: 20,
                          left: 30,
                          top: 20,
                          child: Text(
                            "Yoga To Increase Concentration",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      Positioned(
                          right: 20,
                          top: 45,
                          left: 30,
                          child: Text(
                            "Last Time Exercised: 25/Jan/2022",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          )),
                      Positioned(
                          right: 20,
                          top: 60,
                          left: 30,
                          child: Text(
                            "Difficulty Level: Minimum",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          )),
                      Positioned(
                          right: 20,
                          top: 75,
                          left: 30,
                          child: Text(
                            "Duration:35 minutes",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ))
                    ],
                  ),
                  Stack(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 2, 20, 50),
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://img.freepik.com/free-photo/silhouette-yoga-girl-is-practicing-rooftop-while-sunset_1150-21839.jpg?w=996&t=st=1672217189~exp=1672217789~hmac=e47ee13ea1764d809606d81696fa55e667869c349f81ad767effa9b4cfa0d466"))),
                            ),
                          ]),
                      Positioned(
                          right: 20,
                          left: 30,
                          top: 20,
                          child: Text(
                            "Yoga For Eyes And Shoulders",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      Positioned(
                          right: 20,
                          top: 45,
                          left: 30,
                          child: Text(
                            "Last Time Exercised: 25/Jan/2022",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          )),
                      Positioned(
                          right: 20,
                          top: 60,
                          left: 30,
                          child: Text(
                            "Difficulty Level: Minimum",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          )),
                      Positioned(
                          right: 20,
                          top: 75,
                          left: 30,
                          child: Text(
                            "Duration:35 minutes",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ))
                    ],
                  ),
                  Stack(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 2, 20, 50),
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://static.toiimg.com/thumb/msid-69885314,imgsize-838631,width-800,height-600,resizemode-75/69885314.jpg"))),
                            ),
                          ]),
                      Positioned(
                          right: 20,
                          left: 30,
                          top: 20,
                          child: Text(
                            "Breathing Yoga",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      Positioned(
                          right: 20,
                          top: 45,
                          left: 30,
                          child: Text(
                            "Last Time Exercised: 25/Jan/2022",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          )),
                      Positioned(
                          right: 20,
                          top: 60,
                          left: 30,
                          child: Text(
                            "Difficulty Level: Minimum",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          )),
                      Positioned(
                          right: 20,
                          top: 75,
                          left: 30,
                          child: Text(
                            "Duration:35 minutes",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ))
                    ],
                  ),
                  // Stack(
                  //   children: [
                  //     Column(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Container(
                  //           padding: EdgeInsets.fromLTRB(20, 2, 20, 50),
                  //           height: 150,
                  //           decoration: BoxDecoration(
                  //               image: DecorationImage(
                  //                   image: NetworkImage(
                  //                       "https://img.freepik.com/free-photo/silhouette-yoga-girl-is-practicing-rooftop-while-sunset_1150-21839.jpg?w=996&t=st=1672217189~exp=1672217789~hmac=e47ee13ea1764d809606d81696fa55e667869c349f81ad767effa9b4cfa0d466"))),
                  //         ),
                  //       ],
                  //     ),
                  //     Positioned(
                  //         right: 20,
                  //         left: 35,
                  //         top: 45,
                  //         child: Text(
                  //           "Yoga For Eyes And Shoulders",
                  //           style: TextStyle(
                  //               fontWeight: FontWeight.bold, fontSize: 18),
                  //         )),
                  //     Positioned(
                  //         right: 20,
                  //         left: 35,
                  //         top: 55,
                  //         child: Text(
                  //           "Last Time Exercised",
                  //           style: TextStyle(fontSize: 8, color: Colors.white),
                  //         )),
                  //     Positioned(
                  //         right: 20,
                  //         left: 35,
                  //         top: 65,
                  //         child: Text(
                  //           "Duration: 35 minutes",
                  //           style: TextStyle(fontSize: 8, color: Colors.white),
                  //         ))
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
