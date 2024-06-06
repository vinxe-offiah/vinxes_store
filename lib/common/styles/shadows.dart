import 'package:flutter/material.dart';
import 'package:vinxes_store/utils/constants/colors.dart';

class VShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: VColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: VColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
