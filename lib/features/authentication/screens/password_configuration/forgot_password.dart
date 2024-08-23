import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/features/authentication/controllers/forgot_password/forgot_password_controller.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';
import 'package:vinxes_store/utils/validators/validation.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgotPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(VSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(VTexts.forgotPassword,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: VSizes.spaceBtwItems),
            Text(VTexts.forgotPasswordSubtitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: VSizes.spaceBtwSections * 2),

            // Input field
            Form(
              key: controller.forgotPasswordFormKey,
              child: TextFormField(
                controller: controller.email,
                validator: VValidator.validateEmail,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: VTexts.email),
              ),
            ),
            const SizedBox(height: VSizes.spaceBtwSections),

            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => controller.sendPasswordResetEmail(),
                  child: const Text(VTexts.submit)),
            ),
          ],
        ),
      ),
    );
  }
}
