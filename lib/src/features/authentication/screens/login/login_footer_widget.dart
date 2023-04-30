import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/images.dart';
import '../../../../constants/size.dart';
import '../../../../constants/text_strings.dart';
import '../signup/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(sGoogleLogoImage),
              width: 20.0,
            ),
            onPressed: () {},
            label: const Text(tSignInWithGoogle),
          ),
        ),
        const SizedBox(
          height: sFormHeight - 20,
        ),
        TextButton(
            onPressed: () {
              Get.to(() => const SignUpScreen());
            },
            child: Text.rich(
              TextSpan(
                text: tDonthaveAnAccount,
                style: Theme.of(context).textTheme.bodyMedium,
                children: const [
                  TextSpan(
                    text: tSignup,
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
