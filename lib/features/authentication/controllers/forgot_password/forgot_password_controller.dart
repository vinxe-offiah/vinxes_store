import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/common/widgets/loaders/loaders.dart';
import 'package:vinxes_store/data/repositories/authentication/authentication_repository.dart';
import 'package:vinxes_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/network/network_manager.dart';
import 'package:vinxes_store/utils/popups/full_screen_loader.dart';

class ForgotPasswordController extends GetxController {
  static ForgotPasswordController get instance => Get.find();

  // Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey<FormState>();

  /// Send Reset Password Email
  sendPasswordResetEmail() async {
    try {
      // start loading
      VFullScreenLoader.openLoadingDialog(
          'Processing your request...', VImages.processingEmail);

      // check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        VFullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!forgotPasswordFormKey.currentState!.validate()) {
        VFullScreenLoader.stopLoading();
        return;
      }

      // Send email to reset password
      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());

      // Remove loader
      VFullScreenLoader.stopLoading();

      // Show success screen
      VLoaders.successSnackBar(
        title: 'Email Sent',
        message: 'Email Link Sent to Reset your Password.',
      );

      // Redirect
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      VFullScreenLoader.stopLoading();
      VLoaders.errorSnackBar(title: 'Oh Snap.', message: e.toString());
    }
  }

  /// Resent Reset Password email
  resendPasswordResetEmail(String email) async {
    try {
      // start loading
      VFullScreenLoader.openLoadingDialog(
          'Processing your request...', VImages.loadingAnimation);

      // check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        VFullScreenLoader.stopLoading();
        return;
      }

      // Send email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      // Remove loader
      VFullScreenLoader.stopLoading();

      // Show success screen
      VLoaders.successSnackBar(
        title: 'Email Sent',
        message: 'Email Link Sent to Reset your Password.',
      );
    } catch (e) {
      VFullScreenLoader.stopLoading();
      VLoaders.errorSnackBar(title: 'Oh Snap.', message: e.toString());
    }
  }
}
