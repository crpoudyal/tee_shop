import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tee_shop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:tee_shop/features/authentication/screens/onboarding/widgets/onboarding_naviagtion_dot.dart';
import 'package:tee_shop/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:tee_shop/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:tee_shop/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:tee_shop/utils/constants/image_strings.dart';
import 'package:tee_shop/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(children: [
        // Horizontal Scrollable Page
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: TImages.onBoardingImage1,
              subTitle: TTexts.onBoardingSubTitle1,
              title: TTexts.onBoardingTitle1,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage2,
              subTitle: TTexts.onBoardingSubTitle1,
              title: TTexts.onBoardingTitle2,
            ),
            OnBoardingPage(
              image: TImages.onBoardingImage3,
              subTitle: TTexts.onBoardingSubTitle1,
              title: TTexts.onBoardingTitle3,
            ),
          ],
        ),
        // Skip Button
        const OnBoardingSkip(),
        // Dot Navigation SmoothPageIndicator
        const OnBoardingNavigationDot(),
        // Circular Button
        const OnBoardingNextButton(),
      ]),
    );
  }
}
