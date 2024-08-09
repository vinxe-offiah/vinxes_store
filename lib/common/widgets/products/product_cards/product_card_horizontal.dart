import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:vinxes_store/common/widgets/images/vrectangular_image.dart';
import 'package:vinxes_store/common/widgets/products/product_cards/product_price_text.dart';
import 'package:vinxes_store/common/widgets/texts/product_title_text.dart';
import 'package:vinxes_store/common/widgets/texts/v_brand_title_text_with_icon.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/circular_icon.dart';

class VProductCardHorizontal extends StatelessWidget {
  const VProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(VSizes.productImageRadius),
        color: dark ? VColors.darkerGrey : VColors.lightContainer,
      ),
      child: Row(
        children: [
          /// Thumbnail
          VRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(VSizes.sm),
            backgroundColor: dark ? VColors.dark : VColors.light,
            child: Stack(
              children: [
                // Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: VRectImage(
                      imageUrl: VImages.runningShoes, applyImageRadius: true),
                ),

                //Sale tag
                Positioned(
                  top: 12,
                  child: VRoundedContainer(
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
                ),
                // Favourites icon
                const Positioned(
                  top: 0,
                  right: 0,
                  child: VCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: VSizes.sm, left: VSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VProductTitleText(
                          title: 'Red Nike Running shoes and jumping',
                          smallSize: true),
                      SizedBox(height: VSizes.spaceBtwItems / 2),
                      VBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pricing
                      const Flexible(child: VProductPriceText(price: '180.0')),

                      /// Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: VColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(VSizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              VSizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          width: VSizes.iconLg * 1.2,
                          height: VSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: VColors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
