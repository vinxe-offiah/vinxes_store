import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class VOrderListItems extends StatelessWidget {
  const VOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, index) =>
          const SizedBox(height: VSizes.spaceBtwItems),
      itemBuilder: (_, index) => VRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(VSizes.md),
        backgroundColor: dark ? VColors.dark : VColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Row 1
            Row(
              children: [
                // icon
                const Icon(Iconsax.ship),
                const SizedBox(width: VSizes.spaceBtwItems / 2),

                // Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('processing',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                              color: VColors.primary, fontWeightDelta: 1)),
                      Text('01 Feb 2024',
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),

                //Icon
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Iconsax.arrow_right_34,
                        size: VSizes.iconSm)),
              ],
            ),
            const SizedBox(height: VSizes.spaceBtwItems),

            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: VSizes.spaceBtwItems / 2),

                      // Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('[#26353]',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: VSizes.spaceBtwItems / 2),

                      // Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('02 Feb 2024',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
