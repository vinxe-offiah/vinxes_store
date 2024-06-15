import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:vinxes_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:vinxes_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:vinxes_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

import '../../../../common/widgets/layouts/grid_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  // Home appbar
                  VHomeAppBar(),
                  SizedBox(height: VSizes.spaceBtwSections),
                  // Search bar
                  VSearchContainer(text: "Search in store"),
                  SizedBox(height: VSizes.spaceBtwSections),

                  // Categories section
                  Padding(
                    padding: EdgeInsets.only(left: VSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        VSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: VColors.white,
                        ),
                        SizedBox(height: VSizes.spaceBtwItems),

                        // Categories
                        HomeCategory(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(VSizes.defaultSpace),
              child: Column(
                children: [
                  //promo sliders
                  const VPromoSlider(
                    banners: [
                      VImages.banner1,
                      VImages.banner2,
                      VImages.banner3
                    ],
                  ),
                  const SizedBox(height: VSizes.spaceBtwSections),

                  // Section Heading
                  VSectionHeading(title: 'Popular products', onPressed: () {}),
                  const SizedBox(height: VSizes.spaceBtwItems),

                  //popular products
                  VGridLayout(
                      itemCount: 2,
                      itemBuilder: (_, index) => const VProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
