import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:get/get.dart';
import 'package:vinxes_store/common/widgets/images/vrectangular_image.dart';
import 'package:vinxes_store/features/shop/controllers/home_controller.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';

class VPromoSlider extends StatelessWidget {
  const VPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          // Mapping as a list instead of hardcoding a fix number
          items: banners.map((url) => VRectImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: VSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  VCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? VColors.primary
                        : VColors.grey,
                  )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
