import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/common/widgets/images/v_circular_image.dart';
import 'package:vinxes_store/common/widgets/texts/section_heading.dart';
import 'package:vinxes_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: const VAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            children: [
              // Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const VCircularImage(image: VImages.user),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              // Details
              const SizedBox(height: VSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: VSizes.spaceBtwItems),

              // heading Profile Info
              const VSectionHeading(title: 'Profile', showActionButton: false),
              const SizedBox(height: VSizes.spaceBtwItems),

              VProfileMenu(
                  title: 'Name', value: 'Vinxes III', onPressed: () {}),
              VProfileMenu(
                  title: 'Username', value: 'Vinxes', onPressed: () {}),

              const SizedBox(height: VSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: VSizes.spaceBtwItems),

              // Heading Personal Info
              const VSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: VSizes.spaceBtwItems),

              VProfileMenu(
                  title: 'User ID',
                  value: '01229',
                  icon: Iconsax.copy,
                  onPressed: () {}),
              VProfileMenu(
                  title: 'E-mail', value: 'vinxes@gmail.com', onPressed: () {}),
              VProfileMenu(
                  title: 'Phone Number',
                  value: '+234-803-293-3746',
                  onPressed: () {}),
              VProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              VProfileMenu(
                  title: 'Date of Birth',
                  value: '19 Dec, 1640',
                  onPressed: () {}),
              const Divider(),
              const SizedBox(height: VSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Close Account',
                      style: TextStyle(color: Colors.red)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
