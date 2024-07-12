import 'package:flutter/material.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/device/device_utility.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class VTabBar extends StatelessWidget implements PreferredSizeWidget {
  // Wrap tabs with Material widget so to add background color to them
  /// To do that you use [PreferredSized] widget to create custom class.
  const VTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? VColors.black : VColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: VColors.primary,
        labelColor: dark ? VColors.white : VColors.primary,
        unselectedLabelColor: VColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(VDeviceUtils.getAppBarHeight());
}
