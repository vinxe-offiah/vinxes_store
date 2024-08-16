import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/constants/sizes.dart';

// A widget for displaying an animated loading indicator with optional text and action button
class VAnimationLoaderWidget extends StatelessWidget {
  /// Default constructor for the VAnimationLoaderWidget
  /// Parameters:
  /// - text: the text to be displayed below the animation
  /// - animation: the path to the Lottie animation file
  /// - showAction: Whether to show an action button below the text
  /// - actionText: the text to be displayed on the action button
  /// - onActionPressed: callback function to be executed when the action button is pressed
  const VAnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  });

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery.of(context).size.width *
                  0.8), // Display Lottie animation
          const SizedBox(height: VSizes.defaultSpace),
          Text(text,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
          const SizedBox(height: VSizes.defaultSpace),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: onActionPressed,
                    child: Text(
                      actionText!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: VColors.light),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
