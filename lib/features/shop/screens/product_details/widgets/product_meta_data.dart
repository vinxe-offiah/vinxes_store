import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:vinxes_store/common/widgets/images/v_circular_image.dart';
import 'package:vinxes_store/common/widgets/products/product_cards/product_price_text.dart';
import 'package:vinxes_store/common/widgets/texts/product_title_text.dart';
import 'package:vinxes_store/common/widgets/texts/v_brand_title_text_with_icon.dart';
import 'package:vinxes_store/utils/constants/enums.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class VProductMetaData extends StatelessWidget {
  const VProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = VHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price and Sale price
        Row(
          children: [
            /// Sale Tag
            VRoundedContainer(
              radius: VSizes.sm,
              backgroundColor: VColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: VSizes.sm, vertical: VSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.black),
              ),
            ),
            const SizedBox(width: VSizes.spaceBtwItems),

            /// Text
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: VSizes.spaceBtwItems),
            const VProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: VSizes.spaceBtwItems / 1.5),

        /// Title
        const VProductTitleText(title: 'Orange Nike Fashion Sneakers'),
        const SizedBox(height: VSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const VProductTitleText(title: 'Status'),
            const SizedBox(width: VSizes.spaceBtwItems),
            Text('In stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: VSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            VCircularImage(
                image: VImages.nikeLogo,
                width: 45,
                height: 45,
                overlayColor: darkMode ? VColors.white : VColors.black),
            const VBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            )
          ],
        ),
      ],
    );
  }
}
