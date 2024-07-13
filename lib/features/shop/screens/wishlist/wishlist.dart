import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/common/widgets/icons/circular_icon.dart';
import 'package:vinxes_store/common/widgets/layouts/grid_layout.dart';
import 'package:vinxes_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          VCircularIcon(icon: Iconsax.add, onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            children: [
              VGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const VProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
