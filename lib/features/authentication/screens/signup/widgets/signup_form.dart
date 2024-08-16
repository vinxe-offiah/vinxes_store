import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';
import 'package:vinxes_store/utils/validators/validation.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      VValidator.validateEmptyText('First name', value),
                  controller: controller.firstName,
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: VTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: VSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      VValidator.validateEmptyText('Last name', value),
                  controller: controller.lastName,
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: VTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: VSizes.spaceBtwInputFields),

          // Username
          TextFormField(
            validator: (value) =>
                VValidator.validateEmptyText('Username', value),
            controller: controller.username,
            expands: false,
            decoration: const InputDecoration(
              labelText: VTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: VSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            validator: (value) => VValidator.validateEmail(value),
            controller: controller.email,
            expands: false,
            decoration: const InputDecoration(
              labelText: VTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: VSizes.spaceBtwInputFields),

          // Phone Number
          TextFormField(
            validator: (value) => VValidator.validatePhoneNumber(value),
            controller: controller.phoneNumber,
            expands: false,
            decoration: const InputDecoration(
              labelText: VTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: VSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            validator: (value) => VValidator.validatePassword(value),
            controller: controller.password,
            expands: false,
            decoration: const InputDecoration(
              labelText: VTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: VSizes.spaceBtwInputFields),

          ///Terms and conditions checkbox
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              const SizedBox(width: VSizes.spaceBtwItems),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: '${VTexts.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${VTexts.privacypolicy} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? VColors.white : VColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? VColors.white : VColors.primary,
                          )),
                  TextSpan(
                      text: '${VTexts.and} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${VTexts.termsOfUse} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? VColors.white : VColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? VColors.white : VColors.primary,
                          )),
                ]),
              ),
            ],
          ),
          const SizedBox(height: VSizes.spaceBtwSections),

          ///Create account button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(VTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
