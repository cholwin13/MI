import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/premium_details_arguments_list.dart';
import '../../../../widgets/selectable_grid_view_vo.dart';
import '../../../../widgets/widget_date_picker_text_form_field.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widget_selectable_grid_view.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../widget/widget_period_and_payment.dart';

class MicroHealthPCScreen extends StatefulWidget {
  const MicroHealthPCScreen({super.key});

  @override
  State<MicroHealthPCScreen> createState() => _MicroHealthPCScreenState();
}

class _MicroHealthPCScreenState extends State<MicroHealthPCScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController dobController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController unitController = TextEditingController();

  String age = '';

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

  final List<SelectableGridViewVO> paymentCardList = [
    SelectableGridViewVO(id: 1, title: 'lump_sum'.tr()),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      unitController.text = '1 Unit';
    });
  }

  @override
  Widget build(BuildContext context) {
    DateTime todayDate = DateTime.now();
    final lastDob =
    DateTime(todayDate.year - 5, todayDate.month, todayDate.day - 1);
    final startDob =
    DateTime(todayDate.year - 75, todayDate.month, todayDate.day);

    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.lifeMicroIllnessIcon,
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
                    titleTxt: 'micro_health_insurance',
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
                  CustomTextFormFieldWidget(
                    hintTxt: '',
                    textController: unitController,
                    readOnlyValue: true,
                  ),
                  const SizedBox(
                    height: kMarginMedium_2,
                  ),
                  const PremiumDetailTxt(
                    title: 'select_payment_type',
                    image: AppImages.lifeGovShortTermPayment,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: SelectableGridView(
                      cardList: paymentCardList,
                      isLifePC: true,
                    ),
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
                  title: 'micro_health_insurance',
                  isMMK: true,
                  appBarIcon:
                  AppImages.lifeMicroIllnessIcon,
              ),
            );
          }
        },
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }
}
