import 'package:flutter/material.dart';
import 'package:ranish_test1/pages/homepage.dart';

void main() => runApp(MyApps());

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        title: 'Ranish App',
        home: HomePage());
  }
}
