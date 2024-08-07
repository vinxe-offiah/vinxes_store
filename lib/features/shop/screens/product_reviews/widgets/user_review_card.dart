import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:vinxes_store/common/widgets/rating/rating_indicator.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(VImages.userReview1)),
                const SizedBox(width: VSizes.spaceBtwItems),
                Text('Manny Sly',
                    style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: VSizes.spaceBtwItems),

        /// Review
        Row(
          children: [
            const VRatingBarIndicator(rating: 4),
            const SizedBox(width: VSizes.spaceBtwItems),
            Text('01 Feb, 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: VSizes.spaceBtwItems),
        const ReadMoreText(
          'The user interface of this app is quite intuitive, I was able to navigate and make purchases seamlessly. Great job! I will be using this app more!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: VColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: VColors.primary),
        ),
        const SizedBox(height: VSizes.spaceBtwItems),

        /// Company Review
        VRoundedContainer(
          backgroundColor: dark ? VColors.darkerGrey : VColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(VSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Vinxes's Store",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Feb, 2024',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: VSizes.spaceBtwItems),
                const ReadMoreText(
                  'The user interface of this app is quite intuitive, I was able to navigate and make purchases seamlessly. Great job! I will be using this app more!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: VColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: VColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: VSizes.spaceBtwSections),
      ],
    );
  }
}
