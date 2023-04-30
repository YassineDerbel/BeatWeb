import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:louag_express/src/features/authentication/screens/login/login_screen.dart';
import 'package:louag_express/src/repository/authentication_repository/exceptions/exceptions/signup_email_password_failure.dart';

import '../../../features/authentication/screens/welcome/welcome_screen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    /* ever(firebaseUser, _setInitialScreen);*/
  }
/*
  _setInitialScreen(User? user) {
    if (user != null) {
      // User is already signed up, navigate to LoginScreen
      Get.offAll(() => const LoginScreen());
    } else {
      // User is not signed up, navigate to WelcomeScreen
      Get.offAll(() => const WelcomeScreen());
    }
  }*/

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const WelcomeScreen())
          : Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  Future<void> logout() async => await _auth.signOut();
}
