import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/common/widgets/success_screen/success_screen.dart';
import 'package:vinxes_store/features/authentication/screens/login/login.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //removes the default back arrow
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(VImages.verifyEmail),
                width: VHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: VSizes.spaceBtwSections),
              // Title and Subtitle
              Text(
                VTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: VSizes.spaceBtwItems),
              Text(
                VTexts.supportEmail,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: VSizes.spaceBtwItems),
              Text(
                VTexts.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: VSizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(SuccessScreen(
                          image: VImages.verificationSuccess,
                          title: VTexts.yourAccountCreated,
                          subTitle: VTexts.youAccountCreatedSubtitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(VTexts.continueSubmit)),
              ),

              const SizedBox(height: VSizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(VTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
