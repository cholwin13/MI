import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/selectable_grid_view_vo.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_selectable_grid_view.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../marineCargo/inland_cargo_screen.dart';
import '../motor/add_on_list.dart';
import '../../../../widgets/premium_details_arguments_list.dart';

class MarineHullTimeScreen extends StatefulWidget {
  const MarineHullTimeScreen({super.key});

  @override
  State<MarineHullTimeScreen> createState() => _MarineHullTimeScreenState();
}

class _MarineHullTimeScreenState extends State<MarineHullTimeScreen> {
  final formKey = GlobalKey<FormState>();
  String sumInsure = '';
  String shipAge = '';
  String coverType = '1';
  final TextEditingController sumInsureController = TextEditingController();
  final TextEditingController shipAgeController = TextEditingController();

  void handleSIChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  void handleShipAgeChanged(String value) {
    setState(() {
      shipAge = value;
    });
  }

  String? validateSI(value) {
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.sumInsureErrTxt;
    } else if (si < 1000 || si > 3000000000000) {
      return '*Sum insured must be between 1,000 and 3,000,000,000,000.';
    } else {
      return null;
    }
  }

  String? validateShipAge(value) {
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.marineHullErrTxt;
    } else if (si == 0) {
      return '*Value must have at least 1.';
    } else {
      return null;
    }
  }

  final List<ProductIDListVO> cargoTypeIdList = [
    ProductIDListVO(id: 100),
    ProductIDListVO(id: 200),
    ProductIDListVO(id: 300),
  ];

  final List<SelectableGridViewVO> cargoCardList = [
    SelectableGridViewVO(
        id: 1,
        title: AppStrings.marineHullFishingVessel,
        icon: AppImages.generalMarineHullFishingVessel),
    SelectableGridViewVO(
        id: 2,
        title: AppStrings.marineCargoTypeGeneral,
        icon: AppImages.generalMarineCargo),
    SelectableGridViewVO(
        id: 3,
        title: AppStrings.marineCargoTypeOilAndGas,
        icon: AppImages.generalMarineOilAndGas),
  ];

  final List<SelectableGridViewVO> routeCardList = [
    SelectableGridViewVO(
        id: 1,
        title: AppStrings.marineHullRiverine,
        icon: AppImages.generalMarineHullRiverine),
    SelectableGridViewVO(
        id: 2,
        title: AppStrings.marineHullCoast,
        icon: AppImages.generalMarineHullCoastal),
    SelectableGridViewVO(
        id: 3,
        title: AppStrings.marineHullFishing,
        icon: AppImages.generalMarineHullFishingTrawler),
  ];

  List<AddOnList> addOnMarineHullList = [
    AddOnList(
        label: AppStrings.marineHullMalicious, isChecked: false, addOnId: 1),
    AddOnList(
        label: AppStrings.marineHullNuclear, isChecked: false, addOnId: 2),
    AddOnList(label: AppStrings.marineHullStrike, isChecked: false, addOnId: 3),
    AddOnList(label: AppStrings.marineHullWar, isChecked: false, addOnId: 4),
  ];

  void addCargoTypeIds() {
    for (int i = 0; i < cargoCardList.length; i++) {
      cargoCardList[i].id = cargoTypeIdList[i].id;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addCargoTypeIds();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kMarginCardMedium_2,
                vertical: kMarginCardMedium_2),
            child: Column(
              children: [
                LabelTxtInFormFieldWidget(labelTxt: 'motor_si_mmk'.tr()),
                const SizedBox(
                  height: kMarginSmall,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleSIChanged,
                  hintTxt: 'motor_si_txt'.tr(),
                  textController: sumInsureController,
                  validator: validateSI,
                ),
                const SizedBox(
                  height: kMarginLarge_2,
                ),
                LabelTxtInFormFieldWidget(
                    labelTxt: 'marine_hull_ship_age'.tr()),
                const SizedBox(
                  height: kMarginSmall,
                ),
                CustomTextFormFieldWidget(
                  onChanged: handleShipAgeChanged,
                  hintTxt: 'marine_hull_ship_age_enter_txt'.tr(),
                  textController: shipAgeController,
                  validator: validateShipAge,
                ),
                const SizedBox(
                  height: kMarginLarge_2,
                ),

                CoverTypeBoxWidget(
                  coverType: coverType,
                  onChanged: (value) {
                    setState(() {
                      coverType = value!;
                      print(coverType);
                    });
                  },
                ),

                const SizedBox(
                  height: kMarginLarge_2,
                ),
                Center(
                    child: Text('marine_select_cargo_type'.tr(),
                        style: context.appFonts.bodySmall()?.copyWith(
                            decoration: TextDecoration.underline))),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  child: SelectableGridView(
                    cardList: cargoCardList,
                  ),
                ),
                Center(
                    child: Text('marine_select_route_type'.tr(),
                        style: context.appFonts.bodySmall()?.copyWith(
                            decoration: TextDecoration.underline))),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  child: SelectableGridView(
                    cardList: routeCardList,
                  ),
                ),
                NextBtnWidget(
                  formKey: formKey,
                  onNextPressed: () {
                    final isValid = formKey.currentState?.validate();

                    if (isValid!) {
                      sumInsure = sumInsureController.text;
                      CustomNavigationHelper.router.push(
                        Routes.generalInsAdditionalRiskCoverPath.path,
                        // extra: widget.isMMK
                        extra: PremiumDetailsArguments(
                            title: 'marine_hull_and_machinery_title',
                            isMMK: true,
                            appBarIcon: AppImages.generalMarineIcon,
                            addOnList: addOnMarineHullList),
                      );
                    }
                  },
                  txt: 'next_btn_txt'.tr(),
                ),
              ],
            ),
          ),
        ));
  }
}

class CoverTypeBoxWidget extends StatelessWidget {
  final String coverType;
  final Function(String?)? onChanged;

  const CoverTypeBoxWidget(
      {super.key, required this.coverType, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: context.appColors.colorPrimary),
        borderRadius: BorderRadius.circular(boxRadius_2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: kMarginSmall_3, left: kMarginSmall_3),
            child: Text(
              'marine_hull_select_cover_type'.tr(),
              style: TextStyle(
                  color: context.appColors.colorLabel, fontSize: textRegular
                  // fontWeight: FontWeight.w500
                  ),
            ),
          ),
          Divider(
            color: context.appColors.colorPrimary,
          ),
          Row(
            children: [
              Expanded(
                  child: RadioListTile(
                value: '1',
                groupValue: coverType,
                onChanged: onChanged,
                title: Text(
                  AppStrings.marineHullAllRisk,
                  style: context.appFonts.bodySmall()?.copyWith(
                        fontSize: 11.0,
                      ),
                ),
              )),
              Expanded(
                  child: RadioListTile(
                    value: '2',
                    groupValue: coverType,
                    onChanged: onChanged,
                    title: Text(
                      AppStrings.marineHullTotalLossOnly,
                      style: context.appFonts.bodySmall()?.copyWith(
                        fontSize: 11.0,
                      ),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
