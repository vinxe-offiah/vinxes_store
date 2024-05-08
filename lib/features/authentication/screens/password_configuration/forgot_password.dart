import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
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
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: VTexts.email),
            ),
            const SizedBox(height: VSizes.spaceBtwSections),

            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(const ResetPassword()),
                  child: const Text(VTexts.submit)),
            ),
          ],
        ),
      ),
    );
  }
}
