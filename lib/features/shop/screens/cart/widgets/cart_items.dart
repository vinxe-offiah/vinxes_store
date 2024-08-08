import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/products/product_cards/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class VCartItems extends StatelessWidget {
  const VCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, __) =>
          const SizedBox(height: VSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          const VCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: VSizes.spaceBtwItems),
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Extra space
                    SizedBox(width: 70),
                    // Add and Remove Button
                    VProductQuantityWithAddRemoveButton(),
                  ],
                ),
                VProductPriceText(price: '120'),
              ],
            ),
        ],
      ),
    );
  }
}
