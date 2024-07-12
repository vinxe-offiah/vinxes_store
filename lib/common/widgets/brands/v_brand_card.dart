import 'package:flutter/material.dart';

import '../custom_shapes/containers/rounded_container.dart';
import '../images/v_circular_image.dart';
import '../texts/v_brand_title_text_with_icon.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class VBrandCard extends StatelessWidget {
  const VBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: VRoundedContainer(
        padding: const EdgeInsets.all(VSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// Icon
            Flexible(
              child: VCircularImage(
                image: VImages.gucciShirt,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? VColors.white : VColors.dark,
              ),
            ),
            const SizedBox(width: VSizes.spaceBtwItems / 2),

            /// Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const VBrandTitleWithVerifiedIcon(
                      title: 'Nike', brandTextSize: TextSizes.large),
                  Text('179 products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
