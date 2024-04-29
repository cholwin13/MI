import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/widgets/coverage_type_picker.dart';
import 'package:test_pj_mi/ui/widgets/widget_next_btn.dart';
import 'package:test_pj_mi/ui/widgets/widget_product_info_detail_title.dart';

import '../../helper/dimens.dart';
import '../../helper/navigation_routes.dart';
import '../screens/premiumCalculator/lifeInsurance/seamenPlan/seamem_plan_screen.dart';
import 'app_bar_widget.dart';
import 'coverage_type_picker_list.dart';

class WidgetChooseCoverageTypePicker extends StatefulWidget {
  final CoverageTypePicker arguments;
  const WidgetChooseCoverageTypePicker({super.key, required this.arguments});

  @override
  State<WidgetChooseCoverageTypePicker> createState() => _WidgetChooseCoverageTypePickerState();
}

class _WidgetChooseCoverageTypePickerState extends State<WidgetChooseCoverageTypePicker> {
  String? _selectedType;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _selectedType = widget.arguments.labelList[0].label;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          widget.arguments.appBarIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: kMarginMedium_3,
          ),
          ProductInfoDetailTitleWidget(
            titleTxt: widget.arguments.title,
          ),
          const SizedBox(
            height: kMarginCardMedium_2,
          ),
          Expanded(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
              child: Container(
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
                          left: kMarginCardMedium_2,
                          right: kMarginCardMedium_2,
                          top: kMarginSmall_2),
                      child: Text(
                        widget.arguments.coverageTypeTitle,
                        style: TextStyle(
                          fontSize: textRegular,
                          color: context.appColors.colorPrimary,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Divider(
                      color: context.appColors.colorPrimary,
                    ),
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: widget.arguments.labelList.length,
                          itemBuilder: (context, index) {
                            // WidgetLabel items =
                            // widget.arguments.labelList[index];
                            WidgetLabel items = widget.arguments.labelList[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RadioListTile<String>(
                                  title: Text(
                                    items.label,
                                    style: const TextStyle(
                                        fontSize: textRegular),
                                  ),
                                  value: items.label,
                                  groupValue: _selectedType,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedType = value;
                                    });
                                  },
                                ),
                              ],
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kMarginLargeX_2),
            child: NextBtnWidget(
              onNextPressed: () {
                if (_selectedType != null) {
                  CustomNavigationHelper.router.pop(_selectedType);
                }
              },
              txt: 'select_btn_txt'.tr(),
            ),
          ),
        ],
      ),
    );
  }
}
