import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/station_model.dart';

class FirestoreController {
  Future<List<Station>> getStations() async {
    // Function to fetch the list of stations from Firestore
    // Convert the retrieved documents to Station objects
    final QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('Stations').get();
    final List<Station> stations = snapshot.docs
        .map((doc) => Station(
              name: doc['name'],
              location: doc['location'],
            ))
        .toList();
    return stations;
  }
}
