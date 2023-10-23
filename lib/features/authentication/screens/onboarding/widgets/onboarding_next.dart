import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tee_shop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:tee_shop/utils/constants/colors.dart';
import 'package:tee_shop/utils/helpers/helper_functions.dart';
import 'package:tee_shop/utils/device/device_utility.dart';
import 'package:tee_shop/utils/constants/sizes.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        left: TSizes.defaultSpace,
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? TColors.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
