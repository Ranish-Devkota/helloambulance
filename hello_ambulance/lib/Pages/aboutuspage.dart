import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class AboutusPage extends StatefulWidget {
  //

  AboutusPage({Key? key, this.title}) : super(key: key);

  //

  final String? title;

  @override
  _AboutusPageState createState() => _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {
  //

  @override
  Widget build(BuildContext context) {
    //

    return Scaffold(
      // drawer: MyDrawer(),
      appBar: AppBar(
        //
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.5,
        // shadowColor: Colors.black,
        //
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
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Center(
                    child: Text(
                      "DEVLOPERS",
                      style: GoogleFonts.russoOne(
                        fontSize: 22.0,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 45.0,
                                backgroundColor: Colors.black,
                                backgroundImage:
                                    AssetImage('assets/images/Gokarna.jpg'),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      15.0, 0.0, 8.0, 0.0),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          "Gokarna Baskota",
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Center(
                                        child: Container(
                                          child: Text(
                                              "He is a student of Electronics Communication and Information Engineering at IOE Purwanchal Campus Dharan."),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 3,
                          color: Colors.grey[300],
                          // thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 45.0,
                                backgroundColor: Colors.black,
                                backgroundImage:
                                    AssetImage('assets/images/Ranish.jpg'),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      15.0, 0.0, 8.0, 0.0),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          "Ranish Devkota",
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Center(
                                        child: Container(
                                          child: Text(
                                              "He is a student of Electronics Communication and Information Engineering at IOE Purwanchal Campus Dharan."),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 3,
                          color: Colors.grey[300],
                          // thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 45.0,
                                backgroundColor: Colors.black,
                                backgroundImage:
                                    AssetImage('assets/images/Sachin.jpg'),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      15.0, 0.0, 8.0, 0.0),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          "Sachin Parajuli",
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Center(
                                        child: Container(
                                          child: Text(
                                              "He is an Electronics and Communication Engineer."),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        //
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Center(
                    child: Text(
                      "SUPPORTIVE HANDS",
                      style: GoogleFonts.russoOne(
                        fontSize: 22.0,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

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
                        child: Text(
                          // "we would like to thanks all members of the team 'Hello-Ambulance' and who help us directly or indirectly to get data all over Nepal. Here are some important names mentioned below: \n\nManish Karna, Vijaya Kr Sedhain, Kritagya Regmi, Shishir Babu Rijal, Shekhar Bhattarai, Shuruchi Yadav, Aashika Adhikari, Nawin Sah, Himal Bhandari, Ashish Bhattarai, Dinesh Shahu, Hemanta Neupane, Nishant Mishra, MSkalpana Magar, Rakesh Sah, Bhagat Pandey, Shanker Pandey, Om Prakash, Yogesh Sunar, Bishnu Tiwari, Nangjang Kurumbang Subba, Naveen Bhattara, Leo Vivek Bgt and others.",
                          "We would like to thank everyone who helped us built this platform 'Hello Ambulance'. Special thanks to Arjun Dhital all the way from USA. We are in debt to Shekhar Bhattarai, Nitesh Neupane, S.K. pandit, Suraj Bhattarai, Anoj Sharma, Aashish Bhattarai, Nishant Mishra, Sudarshan Shrestha, Sajeet Baskota, Shishir Babu rijal, Vijaya Kr Sedhai, Shuruchi Yadav, Aashika Adhikari, Bhagat pandey, Bishnu Tiwari, Dinesh shahu, Hemanta Neupane, Himal bhandari, Kritagya regmi, Leo vivek BGT, Manish Karna, MSkalpana Magar, Naveen Bhattarai, Nawin sah, Om Prakash, Rakesh shah, Shanker pandey, Yogesh sunar and other helping hands who contributed directly and indirectly.",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
