import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:vinxes_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

import '../../../../common/widgets/images/vrectangular_image.dart';

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
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 1,
                    ),
                    items: const [
                      VRectImage(
                        imageUrl: VImages.banner1,
                      ),
                      VRectImage(
                        imageUrl: VImages.banner2,
                      ),
                      VRectImage(
                        imageUrl: VImages.banner3,
                      ),
                    ],
                  ),
                  const SizedBox(height: VSizes.spaceBtwItems),
                  Row(
                    children: [
                      for (int i = 0; i < 3; i++)
                        VCircularContainer(
                          width: 20,
                          height: 4,
                          margin: EdgeInsets.only(right: 10),
                          backgroundColor: Colors.green,
                        )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
