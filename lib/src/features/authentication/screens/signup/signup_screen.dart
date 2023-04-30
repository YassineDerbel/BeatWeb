import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louag_express/src/common_widgets/form/form_header_widget.dart';
import 'package:louag_express/src/constants/images.dart';
import 'package:louag_express/src/constants/size.dart';
import 'package:louag_express/src/constants/text_strings.dart';
import 'package:louag_express/src/features/authentication/screens/signup/widgets/sign_up_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
          title: Text(tSignUpTitle),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(sDefaultSize),
            child: Column(
              children: [
                const FormHeaderWidget(
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                  image: sLogo,
                ),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(sGoogleLogoImage),
                          width: 20.0,
                        ),
                        label: Text(
                          tSignInWithGoogle.toUpperCase(),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: tAlreadyHaveAnAccount,
                                style: Theme.of(context).textTheme.bodyMedium),
                            TextSpan(
                              text: tLogin.toUpperCase(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final signUpScreenRoute = GetPageRoute(
  settings: const RouteSettings(name: '/signup'),
  page: () => const SignUpScreen(),
);
