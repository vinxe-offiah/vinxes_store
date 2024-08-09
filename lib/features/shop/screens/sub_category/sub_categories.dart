import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/common/widgets/images/vrectangular_image.dart';
import 'package:vinxes_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const VRectImage(
                  imageUrl: VImages.banner3,
                  width: double.infinity,
                  applyImageRadius: true),
              const SizedBox(height: VSizes.spaceBtwSections),

              /// Sub-Categories
              Column(
                children: [
                  // Heading
                  VSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: VSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: VSizes.spaceBtwItems),
                      itemBuilder: (context, index) =>
                          const VProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
