import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:vinxes_store/features/shop/screens/checkout/checkout.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VAppBar(
          showBackArrow: true,
          title:
              Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(VSizes.defaultSpace),
        child: VCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(VSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: const Text('Checkout\$120'),
        ),
      ),
    );
  }
}
