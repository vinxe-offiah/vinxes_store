import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/common/styles/spacing_styles.dart';
import 'package:vinxes_store/features/authentication/screens/login/login.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: VSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: const AssetImage(VImages.verificationSuccess),
                width: VHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: VSizes.spaceBtwSections),
              // Title and Subtitle
              Text(
                VTexts.yourAccountCreated,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: VSizes.spaceBtwItems),
              Text(
                VTexts.youAccountCreatedSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: VSizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(const LoginScreen()),
                    child: const Text(VTexts.continueSubmit)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
