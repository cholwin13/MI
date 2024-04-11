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
import '../../../../widgets/widget_arrow_text_form_field.dart';
import '../../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../../widgets/widget_label.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../../../../widgets/premium_details_arguments_list.dart';

class SeamanLifeScreen extends StatefulWidget {
  const SeamanLifeScreen({super.key});

  @override
  State<SeamanLifeScreen> createState() => _SeamanLifeScreenState();
}

class _SeamanLifeScreenState extends State<SeamanLifeScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController dobController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController unitController = TextEditingController();

  String age = '';
  String? unitReceivedData;

  String? validateDOB(value) {
    if (value!.isEmpty) {
      return AppStrings.dateOfBirthErrTxt;
    } else {
      return null;
    }
  }

  String? validateUnit(value) {
    if (value!.isEmpty) {
      return AppStrings.seamenErrTxt;
    } else {
      return null;
    }
  }

  List<WidgetLabel> seamenUnitList = [
    WidgetLabel(label: '1 Unit'),
    WidgetLabel(label: '2 Unit'),
    WidgetLabel(label: '3 Unit'),
    WidgetLabel(label: '4 Unit'),
  ];

  @override
  Widget build(BuildContext context) {
    DateTime todayDate = DateTime.now();
    final lastDob =
    DateTime(todayDate.year - 17, todayDate.month, todayDate.day - 1);
    final startDob =
    DateTime(todayDate.year - 100, todayDate.month, todayDate.day);

    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.lifeSeamanIcon,
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
                    titleTxt: 'seaman_insurance',
                  ),
                  const SizedBox(
                    height: kMarginCardMedium_2,
                  ),
                  LabelTxtInFormFieldWidget(labelTxt: 'date_of_birth'.tr()),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  WidgetDatePickerTextFormField(
                    dateController: dobController,
                    validate: validateDOB,
                    initialDate: lastDob,
                    firstDate: startDob,
                    lastDate: lastDob,
                    hintTxt: 'dd-mm-yyyy',
                    ageController: ageController,
                  ),
                  const SizedBox(
                    height: kMarginMedium_2,
                  ),
                  LabelTxtInFormFieldWidget(labelTxt: 'age'.tr()),
                  const SizedBox(
                    height: kMarginSmall,
                  ),
                  CustomTextFormFieldWidget(
                    hintTxt: '',
                    textController: ageController,
                    readOnlyValue: true,
                  ),
                  const SizedBox(
                    height: kMarginMedium_2,
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
                              title: 'seaman_insurance',
                              appBarIcon: AppImages.lifeSeamanIcon,
                              coverageTypeTitle: 'travel_insure_unit'.tr(),
                              labelList: seamenUnitList
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
                    title: 'seaman_insurance',
                    isMMK: true,
                    appBarIcon: AppImages.lifeSeamanIcon));
          }
        },
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}
