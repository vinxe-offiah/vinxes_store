import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:vinxes_store/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/data/repositories/authentication/authentication_repository.dart';
import 'package:vinxes_store/features/authentication/screens/login/login.dart';
import 'package:vinxes_store/features/personalization/screens/address/address.dart';
import 'package:vinxes_store/features/shop/screens/order/order.dart';
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
            Padding(
              padding: const EdgeInsets.all(VSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Settings
                  const VSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: VSizes.spaceBtwItems),

                  VSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  const VSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                  ),
                  VSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and completed orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  const VSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                  ),
                  const VSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted coupons',
                  ),
                  const VSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message',
                  ),
                  const VSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                  ),

                  /// App Settings
                  const SizedBox(height: VSizes.spaceBtwSections),
                  const VSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: VSizes.spaceBtwItems),
                  const VSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subtitle: 'Upload data to your cloud firebase'),
                  VSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  VSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  VSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),

                  /// Logout Button
                  const SizedBox(height: VSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () =>
                            AuthenticationRepository.instance.logout(),
                        child: const Text("Log Out")),
                  ),
                  const SizedBox(height: VSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
