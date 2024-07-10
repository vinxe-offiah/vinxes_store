import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:vinxes_store/common/widgets/layouts/grid_layout.dart';
import 'package:vinxes_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/common/widgets/texts/v_brand_title_text_with_icon.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/enums.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/v_circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VAppBar(
        title: Text("Store", style: Theme.of(context).textTheme.headlineMedium),
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
                      onPressed: () {},
                    ),
                    const SizedBox(height: VSizes.spaceBtwItems / 1.5),

                    VGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: VRoundedContainer(
                            padding: const EdgeInsets.all(VSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                /// Icon
                                Flexible(
                                  child: VCircularImage(
                                    image: VImages.gucciShirt,
                                    isNetworkImage: false,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        VHelperFunctions.isDarkMode(context)
                                            ? VColors.white
                                            : VColors.dark,
                                  ),
                                ),
                                const SizedBox(width: VSizes.spaceBtwItems / 2),

                                /// Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const VBrandTitleWithVerifiedIcon(
                                          title: 'Nike',
                                          brandTextSize: TextSizes.large),
                                      Text('179 products',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
