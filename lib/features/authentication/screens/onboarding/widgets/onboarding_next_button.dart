import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/device/device_utility.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    return Positioned(
      right: VSizes.defaultSpace,
      bottom: VDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? VColors.primary : Colors.black,
          foregroundColor: Colors.white,
        ),
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
