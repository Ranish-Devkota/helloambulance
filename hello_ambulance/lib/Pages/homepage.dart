// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:hello_ambulance/DataCollection/ambulancedataclass.dart';
import 'package:hello_ambulance/DataCollection/datacard.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hello_ambulance/DataCollection/getdatastream.dart';
import 'package:hello_ambulance/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

//start variable
Position? userlocation;
List<AmbulanceData> ambulanceData = [];
double varRadius = 30;
var connectivityResult;
//end variable

class MyHomePage extends StatefulWidget {
  //

  MyHomePage({Key? key, this.title}) : super(key: key);

  //

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //
  // List<AmbulanceData> ambulanceData = [];
  var refreshKey = GlobalKey<RefreshIndicatorState>();

  //

  //
  @override
  void initState() {
    super.initState();

    refreshList();
  }

  Future<Null> refreshList() async {
    refreshKey.currentState?.show(atTop: false);
    await Future.delayed(Duration(seconds: 0));

    setState(() {
      //
      _checkWifi();
      // getData(location, varRadius)
    });

    return null;
  }

  @override
  Widget build(BuildContext context) {
    //
    //

    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          //
          elevation: 0.5,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          centerTitle: true,
          title: Text(widget.title!,
              style: GoogleFonts.righteous(
                color: Colors.red,
              )),

          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {
                  refreshList();
                },
                child: Icon(
                  Icons.refresh,
                  size: 30,
                ),
              ),
            ),
            //
            //
          ],
        ),
        body: RefreshIndicator(
          key: refreshKey,
          onRefresh: refreshList,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //
                (connectivityResult == ConnectivityResult.none)
                    ? Align(
                        alignment: Alignment.topCenter,
                        child: Center(
                          child: Text(
                            // only show the pull to refresh when list is clear.
                            // if (connectivityResult == ConnectivityResult.none) {}
                            "No Internet Connection!",

                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.red,
                              // fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : Center(),

                //call list card for showing data:
                // datacard(ambulanceData),
                FutureBuilder<Position>(
                  future: _determinePosition().catchError((e) {
                    Geolocator.openLocationSettings();
                    refreshList();
                  }),
                  builder: (BuildContext context,
                      AsyncSnapshot<Position> locationSnapshot) {
                    if (!locationSnapshot.hasData) {
                      return Expanded(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else {
                      // print(locationSnapshot.data!);

                      return StreamBuilder(
                          stream: getData(locationSnapshot.data!, varRadius),
                          builder: (BuildContext context,
                              AsyncSnapshot<List<DocumentSnapshot>>
                                  dataSnapshots) {
                            //
                            // return StreamBuilder(
                            //     stream: snapshot.data,
                            //     builder: (BuildContext context,
                            //         AsyncSnapshot dataSnapshots) {
                            if (dataSnapshots.connectionState ==
                                    ConnectionState.active &&
                                dataSnapshots.hasData) {
                              //
                              ambulanceData.clear();
                              // if (dataSnapshots.data!.length < 20 &&
                              //     varRadius < radiusLimit) {
                              //   varRadius = varRadius + 1;

                              //   // print(varRadius);

                              // }
                              for (var data in dataSnapshots.data!) {
                                AmbulanceData temp = AmbulanceData(
                                  address: data.get('Address'),
                                  name: data.get('Name'),
                                  phone: data.get('Phone').toString(),
                                );
                                //
                                ambulanceData.add(temp);
                              }

                              //         // if (ambulanceData.isEmpty &&
                              //         //     (varRadius >= radiusLimit ||
                              //         //         dataSnapshots.data!.length >= 25)) {
                              //         //   return Expanded(
                              //         //     child: Center(
                              //         //       child: Card(
                              //         //         color: Colors.white,
                              //         //         child: Padding(
                              //         //           padding: EdgeInsets.fromLTRB(
                              //         //               10.0, 10.0, 10.0, 10.0),
                              //         //           child: Text(
                              //         //             "Sorry, No Ambulance Found!",
                              //         //             style: TextStyle(
                              //         //               fontSize: 20.0,
                              //         //               fontWeight: FontWeight.bold,
                              //         //               // color: Colors.red[300],
                              //         //             ),
                              //         //           ),
                              //         //         ),
                              //         //       ),
                              //         //     ),
                              //         //   );
                              //         // } else {
                              //         // ambulanceData.shuffle();
                              // print(dataSnapshots.data![0].get("Name"));
                              // print(
                              //     "latitude: ${dataSnapshots.data![0].get("Location")["geopoint"].latitude}  longitude: ${dataSnapshots.data![0].get("Location")["geopoint"].longitude}");
                              return datacard(ambulanceData);
                              // }
                              //
                            } else {
                              //   setState(() {
                              // varRadius = varRadius +10;
                              // });
                              // print(snapshots.hasData);
                              return Expanded(
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }
                            // });
                          });
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    var currentposition;
    var lastposition;
    // print("location 1");

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    // print("location 2");
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permantly denied, we cannot request permissions.');
    }
    // print("location 3");

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return Future.error(
            'Location permissions are denied (actual value: $permission).');
      }
    }
    // print("location 4");
    currentposition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    lastposition = await Geolocator.getLastKnownPosition();

    // print("location 5");
    if (currentposition == null) {
      return lastposition;
    }
    // AsyncSnapshot.waiting();
    return currentposition;
  }

  _checkWifi() async {
    connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      // Mobile is not Connected to Internet
      // OpenSettings.openWIFISetting();
      // print("Not Connected!");
    } else {
      // print("connected !!");
      ambulanceData.clear();
    }
  }

  //
  Future<bool> showExitPopup() async {
    return await (showDialog(
          //show confirm dialogue
          //the return value will be from "Yes" or "No" options
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Colors.grey[100],
            title: Center(
              child: Text(
                'HELLO AMBULANCE',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            content: Text('Do you want to exit?', textAlign: TextAlign.center),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[50],
                ),
                onPressed: () => Navigator.of(context).pop(false),
                //return false when click on "NO"
                child: Text(
                  'NO',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                //return true when click on "Yes"
                child: Text('YES'),
              ),
            ],
          ),
        )) ??
        false; //if showDialouge had returned null, then return false
  }
}
