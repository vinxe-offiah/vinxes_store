import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/common/widgets/rating/rating_indicator.dart';
import 'package:vinxes_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

import 'widgets/overall_product_rating.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: VAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Ratings and reviews are verified and are from people who make use of our product and unaffiliated with the platform'),
              SizedBox(height: VSizes.spaceBtwItems),

              /// Overall product Ratings
              VOverallProductRating(),
              VRatingBarIndicator(rating: 3.6),
              Text('12,320'),
              SizedBox(height: VSizes.spaceBtwSections),

              /// User review section
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
