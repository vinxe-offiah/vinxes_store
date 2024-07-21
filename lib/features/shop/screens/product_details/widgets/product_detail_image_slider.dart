import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/vrectangular_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class VProductImageSlider extends StatelessWidget {
  const VProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = VHelperFunctions.isDarkMode(context);
    return CurvedEdgeWidget(
      child: Container(
        color: isDark ? VColors.darkerGrey : VColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(VSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(VImages.runningShoes))),
              ),
            ),

            ///Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: VSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => VRectImage(
                    imageUrl: VImages.nikeShoes,
                    width: 80,
                    border: Border.all(color: VColors.primary),
                    backgroundColor: isDark ? VColors.dark : VColors.light,
                    padding: const EdgeInsets.all(VSizes.sm),
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: VSizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                ),
              ),
            ),

            /// Appbar Icon
            const VAppBar(
              showBackArrow: true,
              actions: [
                VCircularIcon(icon: Iconsax.heart5, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
