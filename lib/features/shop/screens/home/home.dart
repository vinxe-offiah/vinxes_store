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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PrimaryHeaderContainer(
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
              padding: EdgeInsets.all(VSizes.defaultSpace),
              child: Column(
                children: [
                  //promo sliders
                  VPromoSlider(
                    banners: [
                      VImages.banner1,
                      VImages.banner2,
                      VImages.banner3
                    ],
                  ),
                  SizedBox(height: VSizes.spaceBtwSections),
                  //vertical products
                  VProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
