import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/circular_icon.dart';

class VProductQuantityWithAddRemoveButton extends StatelessWidget {
  const VProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        VCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: VSizes.md,
          color: VHelperFunctions.isDarkMode(context)
              ? VColors.white
              : VColors.black,
          backgroundColor: VHelperFunctions.isDarkMode(context)
              ? VColors.darkerGrey
              : VColors.light,
        ),
        const SizedBox(width: VSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: VSizes.spaceBtwItems),
        const VCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: VSizes.md,
          color: VColors.white,
          backgroundColor: VColors.primary,
        ),
      ],
    );
  }
}
