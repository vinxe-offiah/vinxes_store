import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/common/styles/shimmer.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:vinxes_store/features/personalization/controllers/user_controller.dart';
import 'package:vinxes_store/features/shop/screens/cart/cart.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';

class VHomeAppBar extends StatelessWidget {
  const VHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return VAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            VTexts.homeAppBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: const Color.fromARGB(255, 231, 224, 224)),
          ),
          Obx(
            () {
              if (controller.profileLoading.value) {
                return const VShimmerEffect(width: 80, height: 15);
              } else {
                return Text(
                  controller.user.value.fullName,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: VColors.white),
                );
              }
            },
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          iconColor: VColors.white,
          onPressed: () => Get.to(() => const CartScreen()),
        ),
      ],
    );
  }
}
