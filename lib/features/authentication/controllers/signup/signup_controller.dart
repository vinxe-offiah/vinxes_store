import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/common/widgets/loaders/loaders.dart';
import 'package:vinxes_store/data/repositories/authentication/authentication_repository.dart';
import 'package:vinxes_store/data/repositories/user/user_repository.dart';
import 'package:vinxes_store/features/authentication/models/user/user_model.dart';
import 'package:vinxes_store/features/authentication/screens/signup/verify_email.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/network/network_manager.dart';
import 'package:vinxes_store/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final email = TextEditingController(); // Email input controller
  final lastName = TextEditingController(); // Lastname input controller
  final username = TextEditingController(); // Username input controller
  final firstName = TextEditingController(); // First name input controller
  final phoneNumber = TextEditingController(); // Phonenumber input controller
  final password = TextEditingController(); // Password input controller
  final hidePassword = true.obs; //Observable for hiding/showing password
  final privacyPolicy = true.obs;

  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // Form key for form validation

  /// Signup
  void signup() async {
    try {
      // Check Internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form Validation
      if (!signupFormKey.currentState!.validate()) return;

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        VLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create an account, you have to read and accept the Privacy Policy & Terms of Use.',
        );
        return;
      }

      // Start Loading
      VFullScreenLoader.openLoadingDialog(
          'We are processing your information...', VImages.processingEmail);

      // Register user in the Firebase Authentication & save user data in Firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // Save Aunthenticated user data in the Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove Loader
      VFullScreenLoader.stopLoading();

      // Show Success Message
      VLoaders.successSnackBar(
          title: 'Congratulations',
          message: 'Your account has been created! Verify email to continue.');

      // Move to Verify email Screen
      Get.to(() => VerifyEmailScreen(
            email: email.text.trim(),
          ));
    } catch (e) {
      // Remove Loader
      VFullScreenLoader.stopLoading();

      // Show some error to the user
      VLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
