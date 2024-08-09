import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/common/widgets/brands/v_brand_card.dart';
import 'package:vinxes_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: VAppBar(title: Text('Nike'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Detail
              VBrandCard(showBorder: true),
              SizedBox(height: VSizes.spaceBtwSections),

              VSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
