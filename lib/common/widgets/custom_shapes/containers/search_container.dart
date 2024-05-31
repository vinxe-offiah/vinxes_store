import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/device/device_utility.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class VSearchContainer extends StatelessWidget {
  const VSearchContainer({
    super.key,
    this.icon = Iconsax.search_normal,
    required this.text,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final IconData? icon;
  final String text;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: VSizes.defaultSpace),
        child: Container(
          width: VDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(VSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? VColors.dark
                    : VColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(VSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: VColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.grey),
              const SizedBox(width: VSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
