import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/chips/choice_chip.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:vinxes_store/common/widgets/products/product_cards/product_price_text.dart';
import 'package:vinxes_store/common/widgets/texts/product_title_text.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        // Selected Attribute Pricing & Description
        VRoundedContainer(
          padding: const EdgeInsets.all(VSizes.sm),
          backgroundColor: dark ? VColors.darkerGrey : VColors.grey,
          child: Column(
            children: [
              // Ttile, price and stock
              Row(
                children: [
                  const VSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: VSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const VProductTitleText(
                              title: 'Price : ', smallSize: true),

                          // Actual price
                          Text('\$25',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: VSizes.spaceBtwItems),

                          // Sale price
                          const VProductPriceText(price: '20'),
                        ],
                      ),

                      // Stock
                      Row(
                        children: [
                          const VProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Variation Description
              const VProductTitleText(
                title:
                    'Different stroke for different folks! Dive into an amazing world of choices and fun.',
                maxLines: 4,
                smallSize: true,
              ),
            ],
          ),
        ),
        const SizedBox(height: VSizes.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: VSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                VChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                VChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                VChoiceChip(
                    text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VSectionHeading(title: 'Sizes', showActionButton: false),
            const SizedBox(height: VSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 9,
              children: [
                VChoiceChip(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
                VChoiceChip(
                    text: 'EU 36', selected: false, onSelected: (value) {}),
                VChoiceChip(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
