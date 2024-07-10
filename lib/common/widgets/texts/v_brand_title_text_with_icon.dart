import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vinxes_store/common/widgets/texts/v_brand_title_text.dart';
import 'package:vinxes_store/utils/constants/enums.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class VBrandTitleWithVerifiedIcon extends StatelessWidget {
  const VBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = VColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: VBrandTitleText(
            title: title,
            maxLines: maxLines,
            color: textColor,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: VSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: VSizes.iconXs),
      ],
    );
  }
}
