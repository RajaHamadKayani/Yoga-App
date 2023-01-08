import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            

            height: 300,
            decoration: BoxDecoration(


                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://cdn-hbnlp.nitrocdn.com/zriDIETSjISHdRruJmuomPStSckAzYbS/assets/static/optimized/rev-39fd361/wp-content/uploads/2019/05/21.png"))),
          ),
          ListTile(
            title: Text(" Reset Progress ", style: TextStyle(fontSize: 25),),
            leading: Icon(Icons.restart_alt,size: 30,),
          ),
          ListTile(
            title: Text("Share With Friends", style: TextStyle(fontSize: 25),),
            leading: Icon(Icons.share, size: 30,),

          ),
          ListTile(
            title: Text("Privary Policy", style: TextStyle(fontSize: 25),),
            leading: Icon(Icons.security, size: 30,),

          ),
          ListTile(
            title: Text("Rate us", style: TextStyle(fontSize: 25),),
            leading: Icon(Icons.star, size: 30,),
          ),
          ListTile(
            title: Text("FeedBack", style: TextStyle(fontSize: 25),),
            leading: Icon(Icons.comment, size: 30,),
          ),
          Divider(thickness: 3,endIndent: 35,indent: 35,),
          Text("Version 1.1.0",style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
