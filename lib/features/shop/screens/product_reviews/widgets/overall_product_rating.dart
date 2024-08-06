import 'package:flutter/material.dart';

import 'percent_indicator.dart';

class VOverallProductRating extends StatelessWidget {
  const VOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expanded() takes the complete available width of the screen
        Expanded(
            flex: 3,
            child:
                Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
            flex: 7,
            child: Column(
              children: [
                VRatingPercentIndicator(text: '5', value: 0.8),
                VRatingPercentIndicator(text: '4', value: 0.6),
                VRatingPercentIndicator(text: '3', value: 0.4),
                VRatingPercentIndicator(text: '2', value: 0.2),
                VRatingPercentIndicator(text: '1', value: 0.1),
              ],
            )),
      ],
    );
  }
}
