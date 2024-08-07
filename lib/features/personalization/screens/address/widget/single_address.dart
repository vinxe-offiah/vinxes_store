import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class VSingleAddress extends StatelessWidget {
  const VSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);

    return VRoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? VColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? VColors.darkerGrey
              : VColors.grey,
      margin: const EdgeInsets.only(bottom: VSizes.spaceBtwItems),
      padding: const EdgeInsets.all(VSizes.md),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? VColors.light
                      : VColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vlad Dune',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: VSizes.sm / 2),
              const Text('(+234) 80 5647 4737',
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: VSizes.sm / 2),
              const Text('438 Ozumba Mbadiwe Avenue, Lagos Island, Nigeria',
                  softWrap: true),
            ],
          )
        ],
      ),
    );
  }
}
