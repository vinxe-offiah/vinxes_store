import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/features/authentication/controllers/login/login_controller.dart';
import 'package:vinxes_store/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:vinxes_store/features/authentication/screens/signup/signup.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';
import 'package:vinxes_store/utils/validators/validation.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: VSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              controller: controller.email,
              validator: (value) => VValidator.validateEmail(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: VTexts.email,
              ),
            ),
            const SizedBox(height: VSizes.spaceBtwInputFields),
            // Password
            Obx(
              // Using Obx widget to redraw the screen by observing the obs value of obscure password...
              //...instead of using a stateful widget and calling setState
              () => TextFormField(
                validator: (value) =>
                    VValidator.validateEmptyText('Password', value),
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                expands: false,
                decoration: InputDecoration(
                  labelText: VTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye
                        : Iconsax.eye_slash),
                  ),
                ),
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
                    Obx(
                      () => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value =
                              !controller.rememberMe.value),
                    ),
                    const Text(VTexts.rememberMe),
                  ],
                ),
                // Forgot password
                TextButton(
                    onPressed: () => Get.to(() => const ForgotPassword()),
                    child: const Text(VTexts.forgotPassword)),
              ],
            ),
            const SizedBox(height: VSizes.spaceBtwSections),

            // Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.emailAndPasswordSignIn(),
                child: const Text(VTexts.signIn),
              ),
            ),
            const SizedBox(height: VSizes.spaceBtwItems),

            // Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
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
