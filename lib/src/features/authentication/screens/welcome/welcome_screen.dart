import 'package:flutter/material.dart';
import 'package:louag_express/src/constants/colors.dart';
import 'package:louag_express/src/constants/images.dart';
import 'package:louag_express/src/constants/size.dart';
import 'package:louag_express/src/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var height = mediaQuery.size.height;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? cSecondaryColor : cPrimaryColor,
      body: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(sDefaultSize),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image(
            // ignore: prefer_const_constructors
            image: AssetImage(sWelcomeScreenImage),
            height: height * 0.6,
          ),
          Column(
            children: [
              Text(
                tWelcomeTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                tWelcomeSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    tLogin.toUpperCase(),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    tSignup.toUpperCase(),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
