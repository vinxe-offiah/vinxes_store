import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/features/personalization/screens/address/add_new_address.dart';
import 'package:vinxes_store/features/personalization/screens/address/widget/single_address.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: VColors.primary,
        child: const Icon(Iconsax.add, color: VColors.white),
      ),
      appBar: VAppBar(
        showBackArrow: true,
        title:
            Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            children: [
              VSingleAddress(selectedAddress: false),
              VSingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
