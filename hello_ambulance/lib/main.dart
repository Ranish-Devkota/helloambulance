import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hello_ambulance/Pages/homepage.dart';

void main() async {
  //
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

String appTitle = "HELLO AMBULANCE";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //
      // remove debug banner from app widget
      debugShowCheckedModeBanner: false,

      //
      title: appTitle,
      //
      // theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      theme: ThemeData(
        // This is the theme of your application.
        scaffoldBackgroundColor: Colors.white,
        //
        primarySwatch: Colors.red,
      ),

      //
      // give the home page title
      home: MyHomePage(title: appTitle),
    );
  }
}
