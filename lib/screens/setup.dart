import 'package:flutter/material.dart';
import 'package:yoga_app_1/screens/home_screen.dart';
import 'package:yoga_app_1/screens/ru_ready.dart';

class StartUp extends StatefulWidget {
  const StartUp({Key? key}) : super(key: key);

  @override
  State<StartUp> createState() => _StartUpState();
}

class _StartUpState extends State<StartUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: ElevatedButton(
      //   onPressed: (){
      //
      //   },
      //   child: Padding(
      //     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      //     child: Text("START", style: TextStyle(fontSize: 20),),
      //   ),
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            // title: Text(
            //   "App Bar",
            //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            // ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,

              collapseMode: CollapseMode.parallax,
              title: Text(

                "All In One Yoga",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Image.network(
                "https://www.iprshealth.com/assets/Uploads/_resampled/CroppedFocusedImageWyI2MTMiLCIzMzgiLCIyOS00MyJd/pexels-photo-588561.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            leading: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Icon(Icons.arrow_back),
            ),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up))],
          ),
          SliverToBoxAdapter(
          //     child: Column(
          //   children: [
          //     Container(
          //       height: 200,
          //       color: Colors.yellow,
          //     ),
          //     Container(
          //       height: 200,
          //       color: Colors.grey,
          //     ),
          //     Container(
          //       height: 200,
          //       color: Colors.black,
          //     ),
          //     Container(
          //       height: 200,
          //       color: Colors.red,
          //     )
          //   ],
          // ),),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(

                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),

                        child: Text("20 min * 16 Workouts",
                        style: TextStyle(fontWeight: FontWeight.w400),),
                      ),
                    ],
                  ),
                  Divider(thickness: 2,endIndent: 30,indent: 30,),
                  ListView.separated

                    (
                    physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index)=>ListTile
                        (title: Text("Yoga  $index",style: TextStyle
                        (fontWeight: FontWeight.bold),),
                        subtitle: Text((index%2==0)?"00:20":"x20"),
                        leading: Image.network("https://cdn.dribbble.com/users/3414434/screenshots/14616859/media/94814b2e5bcd1dd9f926bdd0d98eda5c.gif", fit: BoxFit.cover,),),
                      separatorBuilder: (context, index)=>Divider(thickness: 3,),
                      itemCount: 10),
                  SizedBox(height: 2,),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width-45,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>AreUReady()));
                            },
                          child: Padding(

                            padding: EdgeInsets.only(right: 10),
                            child: Text("START", style: TextStyle(fontSize: 20),),
                          ),
                        ),
                      )
                    ],
                  )

                ],
              ),
            ),
          )],
      ),
    );
  }
}
