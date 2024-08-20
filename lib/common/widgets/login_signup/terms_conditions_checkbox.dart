import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/features/authentication/controllers/signup/signup_controller.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class VTermsAndConditionCheckbox extends StatelessWidget {
  const VTermsAndConditionCheckbox({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Obx(() => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) => controller.privacyPolicy.value =
                  !controller.privacyPolicy.value)),
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
                      decorationColor: dark ? VColors.white : VColors.primary,
                    )),
            TextSpan(
                text: '${VTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${VTexts.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? VColors.white : VColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? VColors.white : VColors.primary,
                    )),
          ]),
        ),
      ],
    );
  }
}
