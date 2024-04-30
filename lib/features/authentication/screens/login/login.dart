import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/common/styles/spacing_styles.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    height: 150,
                    image: AssetImage(
                      VImages.myLogo,
                    ),
                  ),
                  Text(
                    VTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: VSizes.sm),
                  Text(
                    VTexts.loginSubtitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              /// Form
              Form(
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
                            onPressed: () {},
                            child: const Text(VTexts.forgotPassword)),
                      ],
                    ),
                    const SizedBox(height: VSizes.spaceBtwSections),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
