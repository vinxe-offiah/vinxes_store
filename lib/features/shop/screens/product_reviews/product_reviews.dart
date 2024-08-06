import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

import 'widgets/overall_product_rating.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const VAppBar(title: Text('reviews & Ratings'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who make use of our product and unaffiliated with the platform'),
              const SizedBox(height: VSizes.spaceBtwItems),

              /// Overall product Ratings
              const VOverallProductRating(),
              RatingBarIndicator(
                itemBuilder: (_, __) =>
                    const Icon(Iconsax.star, color: VColors.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
