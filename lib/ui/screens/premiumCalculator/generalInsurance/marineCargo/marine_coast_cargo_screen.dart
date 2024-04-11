import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/app_strings.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/selectable_grid_view_vo.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widget_selectable_grid_view.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../motor/add_on_list.dart';
import '../../../../widgets/premium_details_arguments_list.dart';
import 'inland_cargo_screen.dart';

class MarineCoastCargoScreen extends StatefulWidget {
  const MarineCoastCargoScreen({super.key});

  @override
  State<MarineCoastCargoScreen> createState() => _MarineCoastCargoScreenState();
}

class _MarineCoastCargoScreenState extends State<MarineCoastCargoScreen> {
  final formKey = GlobalKey<FormState>();
  String sumInsure = '';
  final TextEditingController sumInsureController = TextEditingController();

  void handleSIChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  String? validateSI(value) {
    final double si = double.tryParse(value!) ?? 0.0;
    if (value!.isEmpty) {
      return AppStrings.sumInsureErrTxt;
    } else if (si < 10000 || si > 10000000000) {
      return '*Sum insured must be between 10,000 and 10,000,000,000.';
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
        title: AppStrings.marineCargoTypeGeneral,
        icon: AppImages.generalMarineCargo),
    SelectableGridViewVO(
        id: 2,
        title: AppStrings.marineCargoTypeOilAndGas,
        icon: AppImages.generalMarineOilAndGas),
    SelectableGridViewVO(
        id: 3,
        title: AppStrings.marineCargoTypeSplitMaterials,
        icon: AppImages.generalMarineSplitMaterial)
  ];

  final List<SelectableGridViewVO> routeCardList = [
    SelectableGridViewVO(
        id: 1,
        title: AppStrings.marineCargoRouteRiver,
        icon: AppImages.generalMarineRiver),
    SelectableGridViewVO(
        id: 2,
        title: AppStrings.marineCargoRouteSummerCoast,
        icon: AppImages.generalMarineSummerCoast),
    SelectableGridViewVO(
        id: 3,
        title: AppStrings.marineCargoRouteRainy,
        icon: AppImages.generalMarineRainyCoast),
    SelectableGridViewVO(
        id: 4,
        title: AppStrings.marineCargoRouteCreek,
        icon: AppImages.generalMarineCreek)
  ];

  List<AddOnList> addOnMarineCoastList = [
    AddOnList(
        label: AppStrings.marineAddOnChangeVessel,
        isChecked: false,
        addOnId: 1),
    AddOnList(
        label: AppStrings.marineAddOnBorder, isChecked: false, addOnId: 2),
    AddOnList(
        label: AppStrings.marineAddOnKyalKhon, isChecked: false, addOnId: 3),
    AddOnList(
        label: AppStrings.marineAddOnLoading, isChecked: false, addOnId: 4),
    AddOnList(
        label: AppStrings.marineAddOnPortDueDate, isChecked: false, addOnId: 5),
    AddOnList(label: AppStrings.marineAddOnSRCC, isChecked: false, addOnId: 6),
    AddOnList(
        label: AppStrings.marineAddOnWarRisk, isChecked: false, addOnId: 7),
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
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalMarineIcon,
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
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProductInfoDetailTitleWidget(
                  titleTxt: 'marine_cargo_title',
                ),
                const SizedBox(
                  height: kMarginMedium_3,
                ),
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
                Center(
                    child: Text('marine_select_cargo_type'.tr(),
                        style: context.appFonts
                            .bodySmall()
                            ?.copyWith(decoration: TextDecoration.underline))),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  child: SelectableGridView(
                    cardList: cargoCardList,
                  ),
                ),
                Center(
                    child: Text('marine_select_route_type'.tr(),
                        style: context.appFonts
                            .bodySmall()
                            ?.copyWith(decoration: TextDecoration.underline))),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: SelectableGridView(
                    cardList: routeCardList,
                  ),
                ),
                KeyboardVisibilityBuilder(builder: (context, visible) {
                  return visible
                      ? const SizedBox()
                      : NextBtnWidget(
                          formKey: formKey,
                          onNextPressed: () {
                            final isValid = formKey.currentState?.validate();

                            if (isValid!) {
                              sumInsure = sumInsureController.text;
                              CustomNavigationHelper.router.push(
                                Routes.generalInsAdditionalRiskCoverPath.path,
                                // extra: widget.isMMK
                                extra: PremiumDetailsArguments(
                                    title: 'marine_cargo_title',
                                    isMMK: true,
                                    appBarIcon: AppImages.generalMarineIcon,
                                    addOnList: addOnMarineCoastList),
                              );
                            }
                          },
                          txt: 'next_btn_txt'.tr(),
                        );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductIDListVO {
  int id;

  ProductIDListVO({required this.id});
}
