import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class DonatePage extends StatefulWidget {
  //

  DonatePage({Key? key, this.title}) : super(key: key);

  //

  final String? title;

  @override
  _DonatePageState createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
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
        // Here we take the value from the DonatePage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle: true,
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
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[50],
                      border: Border.all(color: Colors.grey[300]!, width: 0.5)
                      // boxShadow: [
                      // BoxShadow(
                      //   color: Colors.black.withOpacity(0.5),
                      //   offset: Offset(0, 4),
                      //   blurRadius: 5,
                      //   spreadRadius: 3,
                      // ),
                      // ],
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                        child: RichText(
                      text: TextSpan(
                        text:
                            'Every life matters, So we developed this app to find an ambulance nearby. If we have ambulances near you then we will provide you. You can contact and provide us the details of the ambulance near your location through phone, Facebook, or email.\n\n',
                        style: GoogleFonts.mitr(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text:
                                'This is the Community service to help the people in an emergency situation. so for this app to sustain in the ecosystem you can help us by providing information about your nearest ambulance or by giving us some funds in our esewa ID: ',
                          ),
                          TextSpan(
                            text: '9846597666',
                            style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                        // Text(
                        //   "Every life matters, So we developed this app to find an ambulance nearby. If we have ambulances near you then we will provide you. You can contact and provide us the details of the ambulance near your location through phone, Facebook, or email.\n\nThis is the Community service to help the people in an emergency situation. so for this app to sustain in the ecosystem you can help us by providing information about your nearest ambulance or by giving us some funds in our esewa ID: 9846597666",
                        //   style: GoogleFonts.mitr(
                        //     fontSize: 16.0,
                        //     color: Colors.black,
                        //     fontWeight: FontWeight.w500,
                        //   ),
                        // ),
                        ),
                  ),
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
              //   child: TextButton(
              //     style: TextButton.styleFrom(
              //       primary: Colors.white,
              //       backgroundColor: Colors.blue[500],
              //     ),
              //     onPressed: () {
              //       // _lunchemail('hello.ambulance00@gmail.com');
              //     },
              //     child: Text(
              //       'HELP US',
              //       style: TextStyle(
              //         fontSize: 18.0,
              //       ),
              //     ),
              //   ),
              // )
              //
            ],
          ),
        ),
      ),
    );
  }
}
