import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:vinxes_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:vinxes_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
//import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final isDark = VHelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            VProductImageSlider(),

            /// Product Details
            Padding(
              padding: EdgeInsets.only(
                  left: VSizes.defaultSpace,
                  right: VSizes.defaultSpace,
                  bottom: VSizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating and Share Button
                  VRatingAndShare(),

                  /// Price, Title, Stock and Brands
                  VProductMetaData(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
