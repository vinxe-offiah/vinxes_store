import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/device/device_utility.dart';

class VRatingPercentIndicator extends StatelessWidget {
  const VRatingPercentIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: Theme.of(context).textTheme.bodyMedium),
        Expanded(
          child: SizedBox(
            width: VDeviceUtils.getScreenWidth(context) * 06,
            child: LinearPercentIndicator(
              barRadius: const Radius.circular(7),
              lineHeight: 11,
              percent: value,
              progressColor: VColors.primary,
              padding: const EdgeInsets.only(left: 10),
            ),
          ),
        ),
      ],
    );
  }
}
