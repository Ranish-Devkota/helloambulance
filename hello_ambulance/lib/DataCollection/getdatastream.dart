import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';


double radiusLimit = 800;
Stream<List<DocumentSnapshot>>? getData(Position location, double radius) {
  //
  //

  final geo = Geoflutterfire();
  final CollectionReference geoCollection =
      FirebaseFirestore.instance.collection("ambulance1");

  GeoFirePoint center;
  // GeoFirePoint center =
  //     geo.point(latitude: 26.8129791, longitude: 87.2723977);
  // print("getdata22");
  // if (location != null) {
  center =
      geo.point(latitude: location.latitude, longitude: location.longitude);

  // double radius = var_radius; // in KM
  String field = 'Location';
  //
  // print("getdata33");
  // print(radius);
  // print(location);
  Stream<List<DocumentSnapshot>>? dataStream = geo
      .collection(collectionRef: geoCollection)
      .within(center: center, radius: radius, field: field, strictMode: true);

  // print(dataStream.length);
  // dataStream.length.then((value) {
  //   print(value);
  //   print("object");
  //   // return dataStream;
  // });

  // print("data listen");
//  yield  dataStream.where((event) {
//     return (event.length > 20);
//   });
  // var dataHere;
  dataStream.listen((event) {
    print("Length: ${event.length}");
    print("Radius: $radius");
    // if (event.length < 20 && radius < radiusLimit) {
    //   // dataHere =
    //   getData(location, radius + 1);
    // }

  });
  // //
  // print("return pre $ready");
  // return dataStream;
  // if (ready) {
  //   print(" just return");
  //   return dataStream;
  // }

  return dataStream;
  // yield dataStream;
}
