import 'package:flutter/material.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class VCircularIcon extends StatelessWidget {
  const VCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = VSizes.lg,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final IconData icon;
  final double? width, height, size;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : VHelperFunctions.isDarkMode(context)
                ? VColors.black.withOpacity(0.5)
                : VColors.white.withOpacity(0.5),
      ),
      child: IconButton(
          onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}
