import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/common/styles/spacing_styles.dart';
import 'package:vinxes_store/common/widgets/login_signup/form_divider.dart';
import 'package:vinxes_store/common/widgets/login_signup/social_buttons.dart';
import 'package:vinxes_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:vinxes_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: VSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const LoginHeader(),

              /// Form
              const LoginForm(),

              ///Divider
              FormDivider(dividerText: VTexts.orSignInWith.capitalize!),
              const SizedBox(height: VSizes.spaceBtwItems),

              ///Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
