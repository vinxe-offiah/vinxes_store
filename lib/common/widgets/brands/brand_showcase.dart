import 'package:flutter/material.dart';

import 'v_brand_card.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';

class VBrandShowcase extends StatelessWidget {
  const VBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return VRoundedContainer(
      showBorder: true,
      borderColor: VColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(VSizes.md),
      margin: const EdgeInsets.only(bottom: VSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with product count
          const VBrandCard(showBorder: false),
          const SizedBox(height: VSizes.spaceBtwItems),

          /// Brand's top 3 products
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: VRoundedContainer(
        height: 100,
        backgroundColor: VHelperFunctions.isDarkMode(context)
            ? VColors.darkerGrey
            : VColors.light,
        margin: const EdgeInsets.only(right: VSizes.sm),
        padding: const EdgeInsets.all(VSizes.md),
        child: Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
