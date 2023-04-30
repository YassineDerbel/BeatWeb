import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louag_express/src/common_widgets/form/form_header_widget.dart';
import 'package:louag_express/src/constants/images.dart';
import 'package:louag_express/src/constants/size.dart';
import 'package:louag_express/src/constants/text_strings.dart';
import 'package:louag_express/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(sDefaultSize),
      child: Column(
        children: [
          const SizedBox(
            height: sDefaultSize * 4,
          ),
          const FormHeaderWidget(
            title: tForgetPasswordTitle,
            subTitle: tForgetPasswordSubTitle,
            image: sForgetPasswordImage,
            crossAxisAlignment: CrossAxisAlignment.center,
            heightBetween: 30.0,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: sFormHeight,
          ),
          Form(
              child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  label: Text(tEmail),
                  hintText: tEmail,
                  prefixIcon: Icon(Icons.mail_outline_rounded),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const OTPScreen());
                    },
                    child: const Text(tNext)),
              ),
            ],
          ))
        ],
      ),
    ));
  }
}
