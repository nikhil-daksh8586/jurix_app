import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jurix_app/features/authentication/screens/onboarding/widgets/onbarding_skip.dart';
import 'package:jurix_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:jurix_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:jurix_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onboard1,
                title: TTexts.onboardingTitle1,
                subTitle: TTexts.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onboard2,
                title: TTexts.onboardingTitle2,
                subTitle: TTexts.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onboard3,
                title: TTexts.onboardingTitle3,
                subTitle: TTexts.onboardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardSkip(),

          /// smooth page indicator
          OnBoardingDotNavigation(),

          /// circular button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}


