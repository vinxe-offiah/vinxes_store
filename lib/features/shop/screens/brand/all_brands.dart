import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/common/widgets/brands/v_brand_card.dart';
import 'package:vinxes_store/common/widgets/layouts/grid_layout.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/features/shop/screens/brand/brand_product.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const VAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const VSectionHeading(title: 'Brands'),
              const SizedBox(height: VSizes.spaceBtwItems),

              /// Brands
              VGridLayout(
                itemCount: 8,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => VBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProduct()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
