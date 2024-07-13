import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:vinxes_store/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  VAppBar(
                    title: Text('Settings',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: VColors.white)),
                  ),

                  // User profile card
                  const VUserProfileTile(),
                  const SizedBox(height: VSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            const Padding(
              padding: EdgeInsets.all(VSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Settings
                  VSectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  SizedBox(height: VSizes.spaceBtwItems),

                  VSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set shopping delivery address',
                  ),
                  VSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                  ),
                  VSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and completed orders',
                  ),
                  VSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                  ),
                  VSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted coupons',
                  ),
                  VSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message',
                  ),
                  VSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                  ),

                  /// App Settings
                  SizedBox(height: VSizes.spaceBtwSections),
                  VSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  SizedBox(height: VSizes.spaceBtwItems),
                  VSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subtitle: 'Upload data to your cloud firebase'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
