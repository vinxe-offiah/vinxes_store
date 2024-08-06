import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:vinxes_store/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:vinxes_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:vinxes_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:vinxes_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:vinxes_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
//import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final isDark = VHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const VBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            const VProductImageSlider(),

            /// Product Details
            Padding(
              padding: const EdgeInsets.only(
                  left: VSizes.defaultSpace,
                  right: VSizes.defaultSpace,
                  bottom: VSizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating and Share Button
                  const VRatingAndShare(),

                  /// Price, Title, Stock and Brands
                  const VProductMetaData(),

                  /// Product Attributes
                  const ProductAttributes(),
                  const SizedBox(height: VSizes.spaceBtwSections),

                  /// Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: VSizes.spaceBtwSections),

                  /// Description
                  const VSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: VSizes.spaceBtwItems),
                  const ReadMoreText(
                    'Super comfortable and durable Nike running shoes for all you exercising needs. Affordable pricing and all, enhancing and driving your fitness ambitions ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// Divider
                  const Divider(),
                  const SizedBox(height: VSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const VSectionHeading(
                          title: 'Reviews (199)', showActionButton: false),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(Iconsax.arrow_right)),
                    ],
                  ),
                  const SizedBox(height: VSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
