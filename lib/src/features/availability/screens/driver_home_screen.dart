import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../common_widgets/form/app_bar_widget.dart';

class DriverHomeScreen extends StatefulWidget {
  const DriverHomeScreen({Key? key}) : super(key: key);

  @override
  State<DriverHomeScreen> createState() => _DriverHomeScreenState();
}

class _DriverHomeScreenState extends State<DriverHomeScreen> {
  String selectedStation = "0";
  String selectedDestination = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Louage Express',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection('station').snapshots(),
              builder: (context, snapshot) {
                List<DropdownMenuItem> stationItems = [];
                if (!snapshot.hasData) {
                  const CircularProgressIndicator();
                } else {
                  final stations = snapshot.data?.docs.reversed.toList();
                  stationItems.add(
                    const DropdownMenuItem(
                      value: "0",
                      child: Text('Select Departure Station'),
                    ),
                  );

                  for (var station in stations!) {
                    stationItems.add(
                      DropdownMenuItem(
                        value: station.id,
                        child: Text(
                          station['name'],
                        ),
                      ),
                    );
                  }
                }
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButton(
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    items: stationItems,
                    onChanged: (stationValue) {
                      setState(() {
                        selectedStation = stationValue;
                      });
                      print(stationValue);
                    },
                    value: selectedStation,
                    isExpanded: false,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection('station').snapshots(),
              builder: (context, snapshot) {
                List<DropdownMenuItem> stationItems = [];
                if (!snapshot.hasData) {
                  const CircularProgressIndicator();
                } else {
                  final stations = snapshot.data?.docs.reversed.toList();
                  stationItems.add(
                    const DropdownMenuItem(
                      value: "0",
                      child: Text('Select Destination Station'),
                    ),
                  );

                  for (var station in stations!) {
                    stationItems.add(
                      DropdownMenuItem(
                        value: station.id,
                        child: Text(
                          station['name'],
                        ),
                      ),
                    );
                  }
                }
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButton(
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    items: stationItems,
                    onChanged: (destinationValue) {
                      setState(() {
                        selectedDestination = destinationValue;
                      });
                      print(destinationValue);
                    },
                    value: selectedDestination,
                    isExpanded: false,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
