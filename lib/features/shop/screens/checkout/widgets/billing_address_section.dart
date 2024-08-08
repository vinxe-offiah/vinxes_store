import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

class VBillingAddressSection extends StatelessWidget {
  const VBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VSectionHeading(
            title: 'Shipping Address', buttonTitle: 'change', onPressed: () {}),
        Text('Vinxes Store', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: VSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: VSizes.spaceBtwItems),
            Text('+234 675 5895',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: VSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: VSizes.spaceBtwItems),
            Expanded(
                child: Text('City du Monte, Monaco',
                    style: Theme.of(context).textTheme.bodyMedium,
                    softWrap: true)),
          ],
        ),
      ],
    );
  }
}
