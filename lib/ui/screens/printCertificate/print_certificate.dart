import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_home.dart';

class PrintCertificate extends StatelessWidget {
  const PrintCertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(
        titleIcon: Image.asset(
          AppImages.homePrintCertificate,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: const Center(
        child: Text("Print Certificate"),
      ),
    );
  }
}
