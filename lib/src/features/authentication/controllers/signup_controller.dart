import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:louag_express/src/repository/authentication_repository/exceptions/authentication_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // TextField Controller to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  //Call this Function from Design and it will do the work
  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }
}
