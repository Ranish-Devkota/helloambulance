import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsandconditionPage extends StatefulWidget {
  //

  TermsandconditionPage({Key? key, this.title}) : super(key: key);

  //

  final String? title;

  @override
  _TermsandconditionPageState createState() => _TermsandconditionPageState();
}

class _TermsandconditionPageState extends State<TermsandconditionPage> {
  //

  @override
  Widget build(BuildContext context) {
    //

    return Scaffold(
      // drawer: MyDrawer(),
      appBar: AppBar(
        //
        elevation: 0.5,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        // Here we take the value from the PrivacypolicyPage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle: true,
        //
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.title!,
          style: GoogleFonts.righteous(
            color: Colors.red,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[50],
              border: Border.all(color: Colors.grey[300]!, width: 0.5)
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black.withOpacity(0.5),
              //     offset: Offset(0, 4),
              //     blurRadius: 5,
              //     spreadRadius: 3,
              //   ),
              // ],
              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: FutureBuilder(
                  future: Future.delayed(Duration(milliseconds: 300)).then(
                    (value) {
                      return rootBundle
                          .loadString('assets/Terms_and_conditions.md');
                    },
                  ),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Markdown(data: snapshot.data);
                    }
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[50],
                          border:
                              Border.all(color: Colors.grey[300]!, width: 0.5)),
                      // child: Center(
                      //   child: CircularProgressIndicator(),
                      // ),
                    );
                  },
                ),
              ),
              // SizedBox(
              //   height: 10.0,
              // ),
              // Divider(
              //   height: 30.0,
              //   color: Colors.red[600],
              // ),
              //
              //
              //call list card for showing data:
              // datacard(ambulanceData),
            ],
          ),
        ),
      ),
    );
  }
}
