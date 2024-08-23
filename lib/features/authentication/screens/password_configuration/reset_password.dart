import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/features/authentication/controllers/forgot_password/forgot_password_controller.dart';
import 'package:vinxes_store/features/authentication/screens/login/login.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(VImages.verifyEmail),
                width: VHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: VSizes.spaceBtwSections),
              // Title and Subtitle
              Text(
                VTexts.changePasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: VSizes.spaceBtwItems),
              Text(
                VTexts.changePasswordSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: VSizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.offAll(() => const LoginScreen()),
                    child: const Text(VTexts.done)),
              ),
              const SizedBox(height: VSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () => ForgotPasswordController.instance
                        .resendPasswordResetEmail(email),
                    child: const Text(VTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
