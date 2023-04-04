import 'package:cloud_firestore/cloud_firestore.dart';

class Station {
  String name;
  GeoPoint location;

  Station({required this.name, required this.location});
}
