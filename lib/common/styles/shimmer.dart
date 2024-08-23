import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class VShimmerEffect extends StatelessWidget {
  const VShimmerEffect({
    super.key,
    required this.width,
    required this.height,
    this.radius = 15,
    this.color,
  });

  final double width, height, radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = VHelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (dark ? VColors.darkGrey : VColors.white),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
