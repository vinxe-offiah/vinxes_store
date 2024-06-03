import 'package:flutter/material.dart';
import 'package:vinxes_store/utils/constants/colors.dart';

class VCircularContainer extends StatelessWidget {
  const VCircularContainer(
      {super.key,
      this.height = 400,
      this.width = 400,
      this.padding = 0,
      this.margin,
      this.radius = 400,
      this.child,
      this.backgroundColor = VColors.textWhite});

  final double? height;
  final double? width;
  final double padding;
  final EdgeInsets? margin;
  final double radius;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
