import 'package:flutter/material.dart';

import '../../helper/app_images.dart';
import '../../helper/dimens.dart';
import '../../helper/navigation_routes.dart';
import '../../routes/app_routes.dart';

class CalculatorFloatingBtn extends StatelessWidget {
  final Routes? route;
  final Widget? childWidget;

  const CalculatorFloatingBtn({super.key, this.route, this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kMarginSmall_2),
      child: FloatingActionButton.small(
        onPressed: () {
          // CustomNavigationHelper.router.push(route.path);
          CustomNavigationHelper.router.push(Routes.containerRoutePath.path, extra: childWidget);
        },
        child: Image.asset(AppImages.homeCalculatorIcon, width: iconMedium, height: iconMedium,),
      ),
    );
  }
}
