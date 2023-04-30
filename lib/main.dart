import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louag_express/firebase_options.dart';
import 'package:louag_express/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:louag_express/src/repository/authentication_repository/exceptions/authentication_repository.dart';
import 'package:louag_express/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: LouageExpressTheme.lightTheme,
      darkTheme: LouageExpressTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
