import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/coverage_type_picker_list.dart';
import '../../../../widgets/premium_details_arguments_list.dart';
import '../../../../widgets/widget_arrow_text_form_field.dart';
import '../../../../widgets/widget_label.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';

class SnakeBitePCScreen extends StatefulWidget {
  const SnakeBitePCScreen({super.key});

  @override
  State<SnakeBitePCScreen> createState() => _SnakeBitePCScreenState();
}

class _SnakeBitePCScreenState extends State<SnakeBitePCScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController unitController = TextEditingController();

  String? unitReceivedData;

  String? validateUnit(value) {
    if (value!.isEmpty) {
      return AppStrings.seamenErrTxt;
    } else {
      return null;
    }
  }

  List<WidgetLabel> farmerUnitList = [
    WidgetLabel(label: '1 Unit'),
    WidgetLabel(label: '2 Unit'),
    WidgetLabel(label: '3 Unit'),
    WidgetLabel(label: '4 Unit'),
    WidgetLabel(label: '5 Unit'),
    WidgetLabel(label: '6 Unit'),
    WidgetLabel(label: '7 Unit'),
    WidgetLabel(label: '8 Unit'),
    WidgetLabel(label: '9 Unit'),
    WidgetLabel(label: '10 Unit'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.lifeSnakeBiteIcon,
            color: context.appColors.colorGold,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kMarginCardMedium_2, vertical: kMarginCardMedium_2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProductInfoDetailTitleWidget(
                    titleTxt: 'snake_insurance',
                  ),
                  const SizedBox(
                    height: kMarginCardMedium_2,
                  ),
                  LabelTxtInFormFieldWidget(labelTxt: 'travel_insure_unit'.tr()),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  WidgetArrowTextFormFieldWidget(
                    controller: unitController,
                    hintText: 'travel_insure_hint_txt'.tr(),
                    validator: validateUnit,
                    onPressed: () async {
                      final result = await CustomNavigationHelper.router.push(
                        Routes.coverageTypePickerPath.path,
                          extra: CoverageTypePickerList(
                              title: 'snake_insurance',
                              appBarIcon: AppImages.lifeSnakeBiteIcon,
                            coverageTypeTitle: 'travel_insure_unit'.tr(),
                            labelList: farmerUnitList
                          )
                      );
                      setState(() {
                        unitReceivedData = result as String?;
                        unitController.text = unitReceivedData ?? '';
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      bottomNavigationBar: NextBtnWidget(
        formKey: formKey,
        onNextPressed: () {
          final isValid = formKey.currentState?.validate();
          if (isValid!) {
            CustomNavigationHelper.router.push(
                Routes.lifePremiumDetailsPath.path,
                extra: PremiumDetailsArguments(
                    title: 'snake_insurance',
                    isMMK: true,
                    appBarIcon: AppImages.lifeSnakeBiteIcon));
          }
        },
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}
