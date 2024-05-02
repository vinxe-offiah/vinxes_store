import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';

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
            children: [
              Text(VTexts.createAccount,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: VSizes.spaceBtwSections),

              ///Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
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
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: VTexts.userName,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(height: VSizes.spaceBtwInputFields),

                    // Email
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: VTexts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: VSizes.spaceBtwInputFields),

                    // Phone Number
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: VTexts.phoneNumber,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: VSizes.spaceBtwInputFields),

                    // Password
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: VTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: VSizes.spaceBtwInputFields),
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
