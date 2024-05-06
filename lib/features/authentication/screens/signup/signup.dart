import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/common/widgets/login_signup/form_divider.dart';
import 'package:vinxes_store/common/widgets/login_signup/social_buttons.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';

import 'widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(VTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: VSizes.spaceBtwSections),

              ///Form
              const SignUpForm(),
              const SizedBox(height: VSizes.spaceBtwSections),

              // Divider
              FormDivider(dividerText: VTexts.orSignUpWith.capitalize!),
              const SizedBox(height: VSizes.spaceBtwSections),

              // Socials
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
