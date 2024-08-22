import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/features/authentication/controllers/login/login_controller.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: VColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () => controller.googleSignIn(),
            icon: const Image(
              image: AssetImage(VImages.googleLogo),
              width: VSizes.iconMd,
              height: VSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(width: VSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: VColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(VImages.facebookLogo),
              width: VSizes.iconMd,
              height: VSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
