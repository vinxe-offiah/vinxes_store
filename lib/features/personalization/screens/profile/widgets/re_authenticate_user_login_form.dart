import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/features/personalization/controllers/user_controller.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';
import 'package:vinxes_store/utils/validators/validation.dart';

class ReAuthLoginForm extends StatelessWidget {
  const ReAuthLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: AppBar(title: const Text('Re-Authenticate User')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VSizes.defaultSpace),
          child: Form(
            key: controller.reAuthFormkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Email
                TextFormField(
                  controller: controller.verifyEmail,
                  validator: VValidator.validateEmail,
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
                    controller: controller.verifyPassword,
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
                const SizedBox(height: VSizes.spaceBtwSections),

                // verify button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () =>
                          controller.reAuthenticateEmailAndPasswordUser(),
                      child: const Text('verify')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
