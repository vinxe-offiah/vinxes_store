import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/common/styles/shadows.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:vinxes_store/common/widgets/images/vrectangular_image.dart';
import 'package:vinxes_store/common/widgets/texts/product_title_text.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

import '../../icons/circular_icon.dart';
import '../../texts/v_brand_title_text_with_icon.dart';
import 'product_price_text.dart';

class VProductCardVertical extends StatelessWidget {
  const VProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
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
              height: 180,
              padding: const EdgeInsets.all(VSizes.sm),
              backgroundColor: dark ? VColors.dark : VColors.light,
              child: Stack(
                children: [
                  //Thumbnail image
                  const VRectImage(
                    imageUrl: VImages.runningShoes,
                    applyImageRadius: true,
                  ),
                  //Sale tag
                  Positioned(
                    top: 10,
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
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: VCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: VSizes.spaceBtwItems / 2),

            //product details
            const Padding(
              padding: EdgeInsets.only(left: VSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VProductTitleText(
                    title: 'Red Nike running shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: VSizes.spaceBtwItems / 2),
                  VBrandTitleWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Product Price text
                const Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: VProductPriceText(price: '35.5'),
                ),
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
            )
          ],
        ),
      ),
    );
  }
}
