import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:vinxes_store/features/authentication/screens/signup/signup.dart';
import 'package:vinxes_store/navigation_menu.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: VSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: VTexts.email,
              ),
            ),
            const SizedBox(height: VSizes.spaceBtwInputFields),
            // Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: VTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: VSizes.spaceBtwInputFields / 2),

            ///Remember me & Forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(VTexts.rememberMe),
                  ],
                ),
                // Forgot password
                TextButton(
                    onPressed: () => Get.to(const ForgotPassword()),
                    child: const Text(VTexts.forgotPassword)),
              ],
            ),
            const SizedBox(height: VSizes.spaceBtwSections),

            // Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(const NavigationMenu()),
                child: const Text(VTexts.signIn),
              ),
            ),
            const SizedBox(height: VSizes.spaceBtwItems),

            // Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(const SignUpScreen()),
                child: const Text(VTexts.createAccount),
              ),
            ),
            const SizedBox(height: VSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
