import 'package:flutter/material.dart';

import '../controllers/station_controller.dart';
import '../models/station_model.dart'; // Import the FirestoreController

class YourScreen extends StatefulWidget {
  @override
  _YourScreenState createState() => _YourScreenState();
}

class _YourScreenState extends State<YourScreen> {
  late String selectedStation; // Variable to store selected station name
  FirestoreController _firestoreController =
      FirestoreController(); // Create an instance of the FirestoreController

  void showStationList() async {
    // Function to show the list of stations
    // Retrieve the list of stations from Firestore
    List<Station> stations = await _firestoreController.getStations();

    // Display the list of station names in a dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a Station'),
          content: ListView.builder(
            shrinkWrap: true,
            itemCount: stations.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(stations[index].name),
                onTap: () {
                  setState(() {
                    // Update the selectedStation variable with the selected station name
                    selectedStation = stations[index].name;
                  });
                  Navigator.pop(context); // Close the dialog
                },
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your App Title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_downward),
            onPressed: () {
              // Call the function to show the list of stations
              showStationList();
            },
          ),
        ],
      ),
      // Rest of your screen content
    );
  }
}
