import 'package:flutter/material.dart';
import 'package:vinxes_store/utils/constants/enums.dart';

class VBrandTitleText extends StatelessWidget {
  const VBrandTitleText({
    super.key,
    required this.title,
    this.color,
    this.textAlign = TextAlign.center,
    required this.maxLines,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final Color? color;
  final TextAlign? textAlign;
  final int maxLines;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(
                        color: color,
                      ),
    );
  }
}
