import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vinxes_store/common/widgets/loaders/loaders.dart';
import 'package:vinxes_store/data/repositories/authentication/authentication_repository.dart';
import 'package:vinxes_store/features/personalization/controllers/user_controller.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/network/network_manager.dart';
import 'package:vinxes_store/utils/popups/full_screen_loader.dart';

class LoginController extends GetxController {
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL');
    password.text = localStorage.read('REMEMBER_ME_PASSWORD');
    super.onInit();
  }

  /// Email and Password Signin
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start loading
      VFullScreenLoader.openLoadingDialog(
          'Logging you in...', VImages.loadingAnimation);

      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        VFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
        VFullScreenLoader.stopLoading();
        return;
      }

      // Save Data if remember me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // Login user using email and password authentication
      await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Remove Loader
      VFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      VFullScreenLoader.stopLoading();
      VLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  /// Google SignIn Authentication
  Future<void> googleSignIn() async {
    try {
      // start loading
      VFullScreenLoader.openLoadingDialog(
          'Logging you in...', VImages.loadingAnimation);

      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        VFullScreenLoader.stopLoading();
        return;
      }

      // Google Authentication
      final userCredentials =
          await AuthenticationRepository.instance.signInWithGoogle();

      // Save user record
      await userController.saveUserRecord(userCredentials);

      // Remove Loader
      VFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      // Remove Loader
      VFullScreenLoader.stopLoading();
      VLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
