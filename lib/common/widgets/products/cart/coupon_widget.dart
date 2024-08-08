import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/rounded_container.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VCouponCode extends StatelessWidget {
  const VCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    return VRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? VColors.dark : VColors.white,
      padding: const EdgeInsets.only(
          top: VSizes.sm, bottom: VSizes.sm, right: VSizes.sm, left: VSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? VColors.white.withOpacity(0.5)
                    : VColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.2),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
