import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // Form key for form validation

  /// Signup
  Future<void> signup() async {
    try {
      // Start Loading
      VFullScreenLoader.openLoadingDialog(
          'We are processing your information...', VImages.onBoardingImage1);
    } catch (e) {
      // Show some error to the user
    } finally {
      // Remove Loader
    }
  }
}
