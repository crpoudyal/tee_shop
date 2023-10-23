import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tee_shop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:tee_shop/utils/constants/colors.dart';
import 'package:tee_shop/utils/constants/sizes.dart';
import 'package:tee_shop/utils/device/device_utility.dart';
import 'package:tee_shop/utils/helpers/helper_functions.dart';

class OnBoardingNavigationDot extends StatelessWidget {
  const OnBoardingNavigationDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 6),
          count: 3,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
        ));
  }
}
