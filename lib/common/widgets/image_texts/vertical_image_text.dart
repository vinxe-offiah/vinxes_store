import 'package:flutter/material.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = VColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: VSizes.spaceBtwItems),
        child: Column(
          children: [
            //image container
            Container(
              width: 55,
              height: 55,
              padding: const EdgeInsets.all(VSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? VColors.black : VColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: VSizes.spaceBtwItems / 2),

            //category text
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
