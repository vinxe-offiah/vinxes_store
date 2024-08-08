import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/vrectangular_image.dart';
import '../../texts/product_title_text.dart';
import '../../texts/v_brand_title_text_with_icon.dart';

class VCartItem extends StatelessWidget {
  const VCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image
        VRectImage(
          imageUrl: VImages.deadpoolShirt,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(VSizes.sm),
          backgroundColor: VHelperFunctions.isDarkMode(context)
              ? VColors.darkerGrey
              : VColors.light,
        ),
        const SizedBox(width: VSizes.spaceBtwItems),

        // Title, Price and Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: VProductTitleText(title: 'Deadpool Tee', maxLines: 1),
              ),
              // Attributes
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Red ',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'UK 30',
                      style: Theme.of(context).textTheme.bodyLarge),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
