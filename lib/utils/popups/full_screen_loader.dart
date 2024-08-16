import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

import '../../common/widgets/loaders/animation_loader.dart';

// A utility class for managing a full screen loading dialog
class VFullScreenLoader {
  /// Open a full screen loading dialog with a given text and animation
  /// This method doesn't return anything
  /// Parameters:
  /// - text: the text to be displayed in the loading dialog
  /// - animation: the Lottie animation to be shown.
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!, //Use Get.overlayContext for overlay dialog
      barrierDismissible:
          false, // The dialog can't be dismissed by tapping outside it
      builder: (_) => PopScope(
        canPop: false, // Disable popping with the back button
        child: Container(
          color: VHelperFunctions.isDarkMode(Get.context!)
              ? VColors.dark
              : VColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              VAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  /// Stop the currently open loading dialog
  /// this method doesn't return anything
  static stopLoading() {
    Navigator.of(Get.overlayContext!)
        .pop(); // Close the dialog using the navigator
  }
}
