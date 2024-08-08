import 'package:flutter/material.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class VBillingPaymentSection extends StatelessWidget {
  const VBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VSectionHeading(
            title: 'Payment Method', buttonTitle: 'change', onPressed: () {}),
        const SizedBox(height: VSizes.spaceBtwItems / 2),
        Row(
          children: [
            VRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: VHelperFunctions.isDarkMode(context)
                  ? VColors.light
                  : VColors.white,
              padding: const EdgeInsets.all(VSizes.sm),
              child: const Image(
                  image: AssetImage(VImages.payPal), fit: BoxFit.contain),
            ),
            const SizedBox(width: VSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
