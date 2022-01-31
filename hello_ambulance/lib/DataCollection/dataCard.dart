import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:hello_ambulance/DataCollection/ambulancedataclass.dart';
import 'package:hello_ambulance/Pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

Widget datacard(List<AmbulanceData> ambulanceData) {
  if (ambulanceData.isEmpty) {
    return (connectivityResult == ConnectivityResult.none)
        ? Expanded(child: Center())
        : Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 0.0,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    child: Text(
                      "Sorry, No Ambulance Found!",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        // color: Colors.red[300],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Center(
                    child: Text(
                      "Nearby ambulances are not our database. If there are any ambulances in your area, please let us know.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          );
  } else {
    return Expanded(
      child: ListView.builder(
        itemCount: ambulanceData.length,
        itemBuilder: (itemBuilder, index) {
          return InkWell(
            onTap: () {
              FlutterPhoneDirectCaller.callNumber(
                  '${ambulanceData[index].phone.toString()}');
            },
            child: Card(
              margin: EdgeInsets.fromLTRB(0, 15.0, 0, 0.0),
              color: Colors.grey[50],
              shadowColor: Colors.red,
              elevation: 0,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.grey, width: 0.25),
              ),
              // shape: Border(right: BorderSide(color: Colors.red, width: 5)),
              //
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(ambulanceData[index].address!.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.patuaOne(
                                fontSize: 18.0,
                                // fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            ambulanceData[index].name!.toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            ambulanceData[index].phone!,
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        FlutterPhoneDirectCaller.callNumber(
                            '${ambulanceData[index].phone.toString()}');
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 30,
                        child: CircleAvatar(
                          radius: 29,
                          backgroundColor: Colors.grey[50],
                          child: Icon(
                            Icons.call,
                            color: Colors.blue,
                            size: 36.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  //
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
