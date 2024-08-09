import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/appbar/appbar.dart';
import 'package:vinxes_store/features/shop/screens/order/widgets/orders_list.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VAppBar(
          title: Text('Mr Orders',
              style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(VSizes.defaultSpace),

        /// Orders
        child: VOrderListItems(),
      ),
    );
  }
}
