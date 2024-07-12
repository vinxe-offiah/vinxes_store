import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/layouts/grid_layout.dart';
import 'package:vinxes_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class VCategoryTab extends StatelessWidget {
  const VCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        // Wrap with listview and stop scrolling because it is already inside a NestedScrollView
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(VSizes.defaultSpace),
            child: Column(
              children: [
                /// Brands
                const VBrandShowcase(
                  images: [
                    VImages.hoodie,
                    VImages.runningShoes,
                    VImages.deadpoolShirt
                  ],
                ),
                const SizedBox(height: VSizes.spaceBtwItems),

                /// Products
                VSectionHeading(
                    title: 'You might like',
                    showActionButton: true,
                    onPressed: () {}),
                const SizedBox(height: VSizes.spaceBtwItems),

                VGridLayout(
                    itemCount: 3,
                    itemBuilder: (_, context) => const VProductCardVertical()),
              ],
            ),
          ),
        ]);
  }
}
