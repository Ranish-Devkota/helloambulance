import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactusPage extends StatefulWidget {
  ContactusPage({Key? key, this.title}) : super(key: key);

  //
  final String? title;

  @override
  _ContactusPageState createState() => _ContactusPageState();
}

class _ContactusPageState extends State<ContactusPage> {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MyDrawer(),
      appBar: AppBar(
        //
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.5,
        // Here we take the value from the AboutusPage object that was created by
        // the App.build method, and use it to set our appbar title.

        title: Text(widget.title!,
            style: GoogleFonts.righteous(
              color: Colors.red,
            )),
        //
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 10.0),
                          child: Container(
                            // alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[50],
                                border: Border.all(
                                    color: Colors.grey[300]!, width: 0.5)
                                // boxShadow: [
                                // BoxShadow(
                                //   color: Colors.black.withOpacity(0.5),
                                //   offset: Offset(0, 4),
                                //   blurRadius: 5,
                                //   spreadRadius: 3,
                                // ),
                                // ],

                                ),
                            // alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text(
                                      "Hello Ambulance",
                                      style: GoogleFonts.patuaOne(
                                        fontSize: 18.0,
                                        color: Colors.black,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 0.0),
                                    child: Center(
                                      child: Text(
                                        "Ambulance Service in Nepal",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 15.0, 0.0, 4.0),
                                    child: InkWell(
                                      onTap: () {
                                        launch('https://fb.me/helloambulance');
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.facebook,
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      8.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                "facebook.com/helloambulance",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red,
                                                  // fontSize: 15.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 4.0, 0.0, 4.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.email,
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              "hello.ambulance00@gmail.com",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 4.0, 0.0, 4.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.phone,
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              "9849455553, 9804664174, 9846597666, 9806008064",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 10.0),
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(15),
                        //       color: Colors.grey[200],
                        //       boxShadow: [
                        //         BoxShadow(
                        //           color: Colors.black.withOpacity(0.5),
                        //           offset: Offset(0, 4),
                        //           blurRadius: 5,
                        //           spreadRadius: 3,
                        //         ),
                        //       ],
                        //     ),
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(10.0),
                        //       child: Column(
                        //         children: [
                        //           Center(
                        //             child: Text(
                        //               "Sachin Parajuli",
                        //               style: TextStyle(
                        //                   fontSize: 20.0,
                        //                   color: Colors.black,
                        //                   fontWeight: FontWeight.bold),
                        //             ),
                        //           ),
                        //           Center(
                        //             child: Text(
                        //               "9865375041",
                        //               style: TextStyle(
                        //                   fontSize: 20.0,
                        //                   color: Colors.black,
                        //                   fontWeight: FontWeight.bold),
                        //             ),
                        //           ),
                        //           Row(
                        //             mainAxisAlignment: MainAxisAlignment.center,
                        //             // crossAxisAlignment: CrossAxisAlignment.center,
                        //             children: [
                        //               IconButton(
                        //                 onPressed: () {},
                        //                 icon: Icon(Icons.facebook),
                        //               ),
                        //               IconButton(
                        //                 onPressed: () {},
                        //                 icon: Icon(Icons.facebook),
                        //               ),
                        //             ],
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.red[400],
                            ),
                            onPressed: () {
                              _lunchemail('hello.ambulance00@gmail.com');
                            },
                            child: Text(
                              'SEND US EMAIL',
                              style: GoogleFonts.patuaOne(
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
      ),
    );
  }

  void _lunchemail(String toEmail) async {
    String subject = 'Hello Ambulance Support';
    var url = "mailto:$toEmail?subject=${Uri.encodeFull(subject)}";
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
