import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:vinxes_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:vinxes_store/utils/constants/image_strings.dart';
import 'package:vinxes_store/utils/constants/text_strings.dart';

import 'onboarding/widgets/onboarding_dot_navigation.dart';
import 'onboarding/widgets/onboarding_next_button.dart';
import 'onboarding/widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontally scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: VImages.onBoardingImage1,
                  title: VTexts.onBoardingTitle1,
                  subtitle: VTexts.onBoardingSubtitle1),
              OnBoardingPage(
                image: VImages.onBoardingImage2,
                title: VTexts.onBoardingTitle2,
                subtitle: VTexts.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                image: VImages.onBoardingImage3,
                title: VTexts.onBoardingTitle3,
                subtitle: VTexts.onBoardingSubtitle3,
              ),
            ],
          ),

          // Skip button
          const OnBoardingSkip(),

          /// Dot navigation smooth page indicator
          const OnBoardingDotNavigation(),

          /// Circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
