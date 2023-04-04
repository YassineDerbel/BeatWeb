import 'package:flutter/material.dart';
import 'package:louag_express/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:louag_express/src/features/availability/screens/driver_screen1.dart';
import 'package:louag_express/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: LouageExpressTheme.lightTheme,
      darkTheme: LouageExpressTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: YourScreen(),
    );
  }
}
