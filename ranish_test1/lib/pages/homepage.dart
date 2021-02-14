import 'package:flutter/material.dart';
import 'package:ranish_test1/pages/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text(" HELLO - AMBULANCE"),
          centerTitle: true,
        ),
        body: Column(children: [
          //Image(image: AssetImage("asserts/images/appstore.png")),
          ListTile(
            title: Text("location"),
            trailing: Text("contact"),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.add_call),
              title: Text("SAMPAMG-CHOWK"),
              subtitle: Text("Ranish Devkota"),
              trailing: Text("9819511212"),
            ),
          ),
        ]));
  }
}
