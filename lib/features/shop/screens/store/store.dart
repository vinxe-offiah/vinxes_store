import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/common/widgets/appbar/tabbar.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:vinxes_store/common/widgets/layouts/grid_layout.dart';
import 'package:vinxes_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/common/widgets/brands/v_brand_card.dart';
import 'package:vinxes_store/features/shop/screens/brand/all_brands.dart';
import 'package:vinxes_store/features/shop/screens/brand/brand_product.dart';
import 'package:vinxes_store/features/shop/screens/store/widget/v_category_tab.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Default tab controllers enable tab rendering if an explicit one is not set
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: VAppBar(
          title:
              Text("Store", style: Theme.of(context).textTheme.headlineMedium),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        //using NestedScrollView to enable scrolling in vertically & horizontally
        body: NestedScrollView(
          headerSliverBuilder: (_, isScrollable) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: VHelperFunctions.isDarkMode(context)
                    ? VColors.black
                    : VColors.white,
                expandedHeight: 450,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(VSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ///Search bar
                      const SizedBox(height: VSizes.spaceBtwItems),
                      const VSearchContainer(
                        text: "search in store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: VSizes.spaceBtwItems),

                      ///Featured Brands
                      VSectionHeading(
                        title: 'featured brands',
                        showActionButton: true,
                        onPressed: () => Get.to(() => const AllBrandsScreen()),
                      ),
                      const SizedBox(height: VSizes.spaceBtwItems / 1.5),

                      /// Brands Grid
                      VGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return VBrandCard(
                              showBorder: false,
                              onTap: () => Get.to(() => const BrandProduct()));
                        },
                      ),
                    ],
                  ),
                ),

                ///Tabs
                bottom: const VTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },

          /// Body of the tabs
          body: const TabBarView(
            children: [
              VCategoryTab(),
              VCategoryTab(),
              VCategoryTab(),
              VCategoryTab(),
              VCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
