import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // Home appbar
                  const VHomeAppBar(),
                  const SizedBox(height: VSizes.spaceBtwSections),
                  // Search bar
                  const VSearchContainer(text: "Search in store"),
                  const SizedBox(height: VSizes.spaceBtwSections),

                  // Categories section
                  Padding(
                    padding: const EdgeInsets.only(left: VSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        const VSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false),
                        const SizedBox(height: VSizes.spaceBtwItems),

                        // Categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return Column(
                                children: [
                                  Container(
                                    width: 55,
                                    height: 55,
                                    padding: const EdgeInsets.all(VSizes.sm),
                                    decoration: BoxDecoration(
                                      color: VColors.white,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
