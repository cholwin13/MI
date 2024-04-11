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
import '../../../../widgets/widget_label.dart';
import '../../../../widgets/widget_label_txt_form_field.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_normal_txt.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widgte_custom_text_form_field.dart';
import '../motor/add_on_list.dart';
import '../../../../widgets/premium_details_arguments_list.dart';

class FireFormScreen extends StatefulWidget {
  const FireFormScreen({super.key});

  @override
  State<FireFormScreen> createState() => _FireFormScreenState();
}

class _FireFormScreenState extends State<FireFormScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController buildingController = TextEditingController();
  TextEditingController roofController = TextEditingController();
  TextEditingController wallController = TextEditingController();
  TextEditingController floorController = TextEditingController();
  TextEditingController squareFeetController = TextEditingController();
  TextEditingController ageOfBuildingController = TextEditingController();
  TextEditingController sumInsureController = TextEditingController();

  String? buildingReceivedData;
  String? roofReceivedData;
  String? wallReceivedData;
  String? floorReceivedData;
  String currency = 'MMK';
  String riskyRoof = 'No';
  String squareFeet = '';
  String ageOfBuilding = '';
  String sumInsure = '';
  bool isMMK = true;

  String? validateBuilding(value){
    if (value!.isEmpty) {
      return AppStrings.fireBuildingErrTxt;
    }else {
      return null;
    }
  }

  String? validateRoof(value){
    if (value!.isEmpty) {
      return AppStrings.fireRoofErrTxt;
    }else {
      return null;
    }
  }

  String? validateWall(value){
    if (value!.isEmpty) {
      return AppStrings.fireWallErrTxt;
    }else {
      return null;
    }
  }

  String? validateFloor(value){
    if (value!.isEmpty) {
      return AppStrings.fireFloorErrTxt;
    }else {
      return null;
    }
  }

  void handleSquareFeetChanged(String value) {
    setState(() {
      squareFeet = value;
    });
  }

  void handleAgeOfBuilding(String value) {
    setState(() {
      ageOfBuilding = value;
    });
  }

  void handleSIChanged(String value) {
    setState(() {
      sumInsure = value;
    });
  }

  String? validateSquareFeet(value){
    if (value!.isEmpty) {
      return AppStrings.fireSquareFeetErrTxt;
    } else {
      return null;
    }
  }

  String? validateAgeOfBuilding(value){
    if (value!.isEmpty) {
      return AppStrings.fireAgeOfBuildingErrTxt;
    } else {
      return null;
    }
  }

  String? validateSI(value){
    if (value!.isEmpty) {
      return AppStrings.sumInsureErrTxt;
    } else {
      return null;
    }
  }

  List<AddOnList> addOnFireList = [
    AddOnList(label: 'fire_add_on_riot'.tr(), isChecked: false, addOnId: 1),
    AddOnList(label: 'fire_add_on_flood'.tr(), isChecked: false, addOnId: 2),
    AddOnList(label: 'fire_add_on_air_craft'.tr(), isChecked: false, addOnId: 3),
    AddOnList(label: 'fire_add_on_burglary'.tr(), isChecked: false, addOnId: 4),
    AddOnList(label: 'fire_add_on_earth_quake'.tr(), isChecked: false, addOnId: 5),
    AddOnList(label: 'fire_add_on_explosion'.tr(), isChecked: false, addOnId: 6),
    AddOnList(label: 'fire_add_on_impact_damage'.tr(), isChecked: false, addOnId: 7),
    AddOnList(label: 'fire_add_on_spontaneous'.tr(), isChecked: false, addOnId: 8),
    AddOnList(label: 'fire_add_on_storm_other'.tr(), isChecked: false, addOnId: 9),
    AddOnList(label: 'fire_add_on_storm_water'.tr(), isChecked: false, addOnId: 10),
    AddOnList(label: 'fire_add_on_subsidence'.tr(), isChecked: false, addOnId: 11),
    AddOnList(label: 'fire_para_2_11'.tr(), isChecked: false, addOnId: 12),
  ];

  List<WidgetLabel> roofTypesList = [
    WidgetLabel(label: 'ASBESTOS'),
    WidgetLabel(label: 'BAMBOO'),
    WidgetLabel(label: 'DANI'),
    WidgetLabel(label: 'LEAF ROOFING'),
    WidgetLabel(label: 'MASONRY'),
    WidgetLabel(label: 'NOT INCLUDE ROOF'),
    WidgetLabel(label: 'PLY WOOD'),
    WidgetLabel(label: 'THATCH'),
    WidgetLabel(label: 'TILES'),
    WidgetLabel(label: 'ZINC/METALS'),
  ];

  List<WidgetLabel> usageOfBuildingTypesList = [
    WidgetLabel(
        label:
        'RESIDENTIAL Cinemas / a Amusement Part / Airport / Railway Station'),
    WidgetLabel(label: 'RESIDENTIAL Clinics ( Normal )'),
    WidgetLabel(label: 'RESIDENTIAL Gymnasium'),
    WidgetLabel(
        label: 'RESIDENTIAL Hospitals / Similar as Hospitals / Laboratory'),
    WidgetLabel(label: 'RESIDENTIAL Hotels / Motels / Similars as Inns'),
    WidgetLabel(label: 'RESIDENTIAL Hotels / Motels / Similars as Inns'),
    WidgetLabel(label: 'RESIDENTIAL Hotels / Motels / Similars as Inns'),
    WidgetLabel(label: 'RESIDENTIAL Hotels / Motels / Similars as Inns'),
    WidgetLabel(label: 'RESIDENTIAL Hotels / Motels / Similars as Inns'),
    WidgetLabel(label: 'RESIDENTIAL Hotels / Motels / Similars as Inns'),
    WidgetLabel(label: 'RESIDENTIAL Hotels / Motels / Similars as Inns'),
    WidgetLabel(label: 'RESIDENTIAL Hotels / Motels / Similars as Inns'),
  ];

  List<WidgetLabel> wallTypesList = [
    WidgetLabel(label: 'ASBESTOS'),
    WidgetLabel(label: 'BAMBOO'),
    WidgetLabel(label: 'BRICK'),
    WidgetLabel(label: 'BRICK NOGGING'),
    WidgetLabel(label: 'CONCRETE'),
    WidgetLabel(label: 'GLASS & COMPOSITE'),
    WidgetLabel(label: 'IRON'),
    WidgetLabel(label: 'IRON MESH'),
    WidgetLabel(label: 'MASONRY'),
    WidgetLabel(label: 'NOT INCLUDE WALL'),
    WidgetLabel(label: 'SEMI-PUCCA'),
    WidgetLabel(label: 'STEEL STRUCTURE'),
    WidgetLabel(label: 'WOOD'),
    WidgetLabel(label: 'ZINC/METAL'),
  ];

  List<WidgetLabel> floorTypesList = [
    WidgetLabel(label: 'CONCRETE'),
    WidgetLabel(label: 'GROUND'),
    WidgetLabel(label: 'TIMBER'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.generalFireAlliedIcon,
            color: context.appColors.colorGold,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
        ),
        body: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: kMarginMedium_2,
              ),
              const ProductInfoDetailTitleWidget(
                  titleTxt: 'fire_and_allied_title'),
              const SizedBox(
                height: kMarginMedium_2,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelTxtInFormFieldWidget(
                            labelTxt: 'fire_building_label'.tr()),
                        const SizedBox(
                          height: kMarginSmall,
                        ),
                        WidgetArrowTextFormFieldWidget(
                          controller: buildingController,
                          hintText: 'fire_building_txt'.tr(),
                          validator: validateBuilding,
                          onPressed: () async {
                            final result = await CustomNavigationHelper.router.push(
                                Routes.coverageTypePickerPath.path,
                                extra: CoverageTypePickerList(
                                    title: 'fire_and_allied_title',
                                    appBarIcon: AppImages.generalFireAlliedIcon,
                                    coverageTypeTitle: 'fire_building_label'.tr(),
                                    labelList: usageOfBuildingTypesList
                                )
                            );
                            setState(() {
                              buildingReceivedData = result as String?;
                              buildingController.text = buildingReceivedData ?? '';
                            });
                          },
                        ),
                        const SizedBox(
                          height: kMarginLarge,
                        ),
                        LabelTxtInFormFieldWidget(
                            labelTxt: 'fire_roof_label'.tr()),
                        const SizedBox(
                          height: kMarginSmall,
                        ),
                        WidgetArrowTextFormFieldWidget(
                          controller: roofController,
                          hintText: 'fire_roof_txt'.tr(),
                          validator: validateRoof,
                          onPressed: () async {
                            final result = await CustomNavigationHelper.router.push(
                                Routes.coverageTypePickerPath.path,
                                extra: CoverageTypePickerList(
                                    title: 'fire_and_allied_title',
                                    appBarIcon: AppImages.generalFireAlliedIcon,
                                    coverageTypeTitle: 'fire_roof_label'.tr(),
                                    labelList: roofTypesList
                                )
                            );
                            setState(() {
                              roofReceivedData = result as String?;
                              roofController.text = roofReceivedData ?? '';
                            });
                          },
                        ),
                        const SizedBox(
                          height: kMarginLarge,
                        ),
                        LabelTxtInFormFieldWidget(
                            labelTxt: 'fire_wall_label'.tr()),
                        const SizedBox(
                          height: kMarginSmall,
                        ),
                        WidgetArrowTextFormFieldWidget(
                          controller: wallController,
                          hintText: 'fire_wall_txt'.tr(),
                          validator: validateWall,
                          onPressed: () async {
                            final result = await CustomNavigationHelper.router.push(
                                Routes.coverageTypePickerPath.path,
                                extra: CoverageTypePickerList(
                                    title: 'fire_and_allied_title',
                                    appBarIcon: AppImages.generalFireAlliedIcon,
                                    coverageTypeTitle: 'fire_wall_label'.tr(),
                                    labelList: wallTypesList
                                )
                            );
                            setState(() {
                              wallReceivedData = result as String?;
                              wallController.text = wallReceivedData ?? '';
                            });
                          },
                        ),
                        const SizedBox(
                          height: kMarginLarge,
                        ),
                        LabelTxtInFormFieldWidget(
                            labelTxt: 'fire_floor_label'.tr()),
                        const SizedBox(
                          height: kMarginSmall,
                        ),
                        WidgetArrowTextFormFieldWidget(
                            controller: floorController,
                            hintText: 'fire_floor_txt'.tr(),
                            validator: validateFloor,
                            onPressed: () async {
                              final result = await CustomNavigationHelper.router.push(
                                  Routes.coverageTypePickerPath.path,
                                  extra: CoverageTypePickerList(
                                      title: 'fire_and_allied_title',
                                      appBarIcon: AppImages.generalFireAlliedIcon,
                                      coverageTypeTitle: 'fire_floor_label'.tr(),
                                      labelList: floorTypesList
                                  )
                              );
                              setState(() {
                                floorReceivedData = result as String?;
                                floorController.text = floorReceivedData ?? '';
                              });
                            },
                        ),
                        const SizedBox(
                          height: kMarginLarge,
                        ),
                        CurrencyBoxWidget(
                          currency: currency,
                          onChanged: (value) {
                            setState(() {
                              currency = value!;
                              isMMK = value == 'MMK';
                            });
                          },
                        ),
                        const SizedBox(
                          height: kMarginLarge,
                        ),
                        RiskyRoofBoxWidget(
                          riskyRoof: riskyRoof,
                        onChanged: (value){
                          setState(() {
                            riskyRoof = value!;
                          });
                        },),
                        const SizedBox(
                          height: kMarginLarge,
                        ),
                        LabelTxtInFormFieldWidget(
                            labelTxt: 'fire_square_feet_label'.tr()),
                        const SizedBox(
                          height: kMarginSmall,
                        ),
                        CustomTextFormFieldWidget(
                          onChanged: handleSquareFeetChanged,
                          hintTxt: 'fire_square_feet_txt'.tr(),
                          textController: squareFeetController,
                          validator: validateSquareFeet,
                        ),
                        const SizedBox(
                          height: kMarginLarge,
                        ),
                        LabelTxtInFormFieldWidget(
                            labelTxt: 'fire_age_of_building_label'.tr()),
                        const SizedBox(
                          height: kMarginSmall,
                        ),
                        CustomTextFormFieldWidget(
                          onChanged: handleAgeOfBuilding,
                          hintTxt: 'fire_age_of_building_txt'.tr(),
                          textController: ageOfBuildingController,
                          validator: validateAgeOfBuilding,
                        ),
                        const SizedBox(
                          height: kMarginLarge,
                        ),
                        LabelTxtInFormFieldWidget(
                            labelTxt: 'motor_si_mmk'.tr()),
                        const SizedBox(
                          height: kMarginSmall,
                        ),
                        CustomTextFormFieldWidget(
                          onChanged: handleSIChanged,
                          hintTxt: 'motor_si_txt'.tr(),
                          textController: sumInsureController,
                          validator: validateSI,
                          readOnlyValue: true,
                        ),
                        const SizedBox(
                          height: kMarginLarge,
                        ),
                        NextBtnWidget(
                          formKey: formKey,
                          onNextPressed: () {
                            final isValid = formKey.currentState?.validate();

                            setState(() {
                              sumInsureController.text = '100';
                            });
                            if (isValid!) {

                              // CustomNavigationHelper.router.push(Routes
                              //     .fireAdditionalCoverPath.path,
                              //   extra: isMMK
                              // );
                              // print('Currency is ${isMMK}');
                              CustomNavigationHelper.router.push(
                                Routes.generalInsAdditionalRiskCoverPath.path,
                                // extra: widget.isMMK
                                extra: PremiumDetailsArguments(title: 'fire_and_allied_title', isMMK: true, appBarIcon: AppImages.generalFireAlliedIcon, addOnList: addOnFireList),
                              );
                            }
                          }, txt: 'next_btn_txt'.tr(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}


class CurrencyBoxWidget extends StatelessWidget {
  final String currency;
  final Function(String?)? onChanged;

  const CurrencyBoxWidget({super.key, required this.currency, this.onChanged});

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
            padding: const EdgeInsets.only(top: kMarginSmall_3, left: kMarginSmall_3),
            child: Text('fire_select_currency'.tr(),
              style: TextStyle(
                color: context.appColors.colorLabel,
                fontSize: textRegular
                // fontWeight: FontWeight.w500
              ),),
          ),
          Divider(
            color: context.appColors.colorPrimary,
          ),
          Row(
            children: [
              Flexible(
                child: RadioListTile<String>(
                  title: NormalTxtWidget(txt: 'MMK', fontColor: context.appColors.colorLabel,),
                  value: 'MMK',
                  groupValue: currency,
                  onChanged: onChanged,
                ),
              ),

              Flexible(
                child: RadioListTile<String>(
                  title: NormalTxtWidget(txt: 'USD', fontColor: context.appColors.colorLabel,),
                  value: 'USD',
                  groupValue: currency,
                  onChanged: onChanged,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RiskyRoofBoxWidget extends StatelessWidget {
  final String riskyRoof;
  final Function(String?)? onChanged;

  const RiskyRoofBoxWidget({super.key, required this.riskyRoof, this.onChanged});

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
            padding: const EdgeInsets.only(top: kMarginSmall_3, left: kMarginSmall_3),
            child: Text('fire_risky_roof_label'.tr(),
              style: TextStyle(
                color: context.appColors.colorLabel,
                fontSize: textRegular,
                // fontWeight: FontWeight.w500
              ),),
          ),
          Divider(
            color: context.appColors.colorPrimary,
          ),
          Row(
            children: [
              Flexible(
                child: RadioListTile<String>(
                  title: NormalTxtWidget(txt: 'No', fontColor: context.appColors.colorLabel,),
                  value: 'No',
                  groupValue: riskyRoof,
                  onChanged: onChanged,
                ),
              ),

              Flexible(
                child: RadioListTile<String>(
                  title: NormalTxtWidget(txt: 'Yes', fontColor: context.appColors.colorLabel,),
                  value: 'Yes',
                  groupValue: riskyRoof,
                  onChanged: onChanged,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

