import 'package:flutter/material.dart';

import '../../helper/app_images.dart';
import '../../helper/dimens.dart';
import '../../helper/navigation_routes.dart';

class CalculatorFloatingBtn extends StatelessWidget {
  final Routes route;

  const CalculatorFloatingBtn({super.key, required this.route});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kMarginSmall_2),
      child: FloatingActionButton.small(
        onPressed: () {
          CustomNavigationHelper.router.push(route.path);
        },
        child: Image.asset(AppImages.calculatorIcon, width: iconMedium, height: iconMedium,),
      ),
    );
  }
}
