import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/dimens.dart';
import '../../../widgets/app_bar_widget.dart';

class InboundHospitalNetworkScreen extends StatefulWidget {
  const InboundHospitalNetworkScreen({super.key});

  @override
  State<InboundHospitalNetworkScreen> createState() =>
      _InboundHospitalNetworkScreenState();
}

class _InboundHospitalNetworkScreenState
    extends State<InboundHospitalNetworkScreen> {
  bool? isLocale;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        checkLanguage();
      });
    });
  }

  void checkLanguage() {
    setState(() {
      isLocale = context.isEnglish ? true : false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.generalInboundIcon,
            color: context.appColors.colorGold,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(kMarginCardMedium_2),
              child: isLocale == true
                  ? Column(
                      children: [
                        Image.asset(AppImages.generalHospitalNetworkEn1),
                        Image.asset(AppImages.generalHospitalNetworkEn2),
                        Image.asset(AppImages.generalHospitalNetworkEn3),
                        Image.asset(AppImages.generalHospitalNetworkEn4),
                      ],
                    )
                  : Column(
                      children: [
                        Image.asset(AppImages.generalHospitalNetworkMm1),
                        Image.asset(AppImages.generalHospitalNetworkMm2),
                        Image.asset(AppImages.generalHospitalNetworkMm3),
                        Image.asset(AppImages.generalHospitalNetworkMm4),
                        Image.asset(AppImages.generalHospitalNetworkMm5),
                        Image.asset(AppImages.generalHospitalNetworkMm6),
                        Image.asset(AppImages.generalHospitalNetworkMm7),
                        Image.asset(AppImages.generalHospitalNetworkMm8),
                        Image.asset(AppImages.generalHospitalNetworkMm9),
                      ],
                    )),
        ));
  }
}
