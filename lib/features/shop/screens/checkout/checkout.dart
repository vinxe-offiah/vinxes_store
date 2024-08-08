import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:vinxes_store/common/widgets/products/cart/coupon_widget.dart';
import 'package:vinxes_store/common/widgets/success_screen/success_screen.dart';
import 'package:vinxes_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:vinxes_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:vinxes_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:vinxes_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:vinxes_store/navigation_menu.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: VAppBar(
        showBackArrow: true,
        title: Text('Order Review',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VSizes.defaultSpace),
          child: Column(
            children: [
              /// Items in cart
              const VCartItems(showAddRemoveButtons: false),
              const SizedBox(height: VSizes.spaceBtwSections),

              /// Coupon TextField
              const VCouponCode(),
              const SizedBox(height: VSizes.spaceBtwSections),

              /// Billing Section
              VRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(VSizes.md),
                backgroundColor: dark ? VColors.black : VColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    VBillingAmountSection(),
                    SizedBox(height: VSizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: VSizes.spaceBtwItems),

                    /// Billing Address
                    VBillingPaymentSection(),
                    SizedBox(height: VSizes.spaceBtwItems),

                    /// Shipping Address
                    VBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(VSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: VImages.paymentSuccessful,
              title: 'Payment Success!',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text('Checkout\$120'),
        ),
      ),
    );
  }
}
