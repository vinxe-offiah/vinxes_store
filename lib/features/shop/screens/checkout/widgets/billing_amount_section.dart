import 'package:flutter/material.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

class VBillingAmountSection extends StatelessWidget {
  const VBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$640.0', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: VSizes.spaceBtwItems / 2),

        // Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$7.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: VSizes.spaceBtwItems / 2),

        // Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$0.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: VSizes.spaceBtwItems / 2),

        //Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$647.0', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
