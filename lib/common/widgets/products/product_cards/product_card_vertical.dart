import 'package:flutter/material.dart';
import 'package:vinxes_store/common/styles/shadows.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class VProductCardVertical extends StatelessWidget {
  const VProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);

    return Container(
      width: 100,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [VShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(VSizes.productImageRadius),
        color: dark ? VColors.darkerGrey : VColors.light,
      ),
      child: Column(
        children: [
          //Thumbnail, wishlist button, discount tag
          VRoundedContainer(
            height: 100,
            padding: const EdgeInsets.all(VSizes.sm),
            backgroundColor: dark ? VColors.dark : VColors.light,
          ),
        ],
      ),
    );
  }
}
