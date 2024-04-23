import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/screens/printCertificate/tpl_print_certificate_screen.dart';

import '../../../helper/app_images.dart';
import '../../../helper/app_strings.dart';
import '../../../helper/dimens.dart';

import '../../widgets/app_bar_widget.dart';
import '../../widgets/card_view_vo.dart';
import '../../widgets/widget_navigable_grid_view.dart';

class PrintCertificate extends StatefulWidget {
  const PrintCertificate({super.key});

  @override
  State<PrintCertificate> createState() => _PrintCertificateState();
}

class _PrintCertificateState extends State<PrintCertificate> {
  final List<CardViewVO> cardList = [
    CardViewVO(AppImages.generalTlpIcon, AppStrings.printCertificateForTpl,
        const TPLPrintCertificateScreen()),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.homePrintCertificate,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: NavigableGridViewWidget(cardList: cardList),
    );
  }
}

