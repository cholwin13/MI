import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_next_btn.dart';

class HealthBeneficiaryHomeScreen extends StatefulWidget {
  const HealthBeneficiaryHomeScreen({super.key});

  @override
  State<HealthBeneficiaryHomeScreen> createState() => _HealthBeneficiaryHomeScreenState();
}

class _HealthBeneficiaryHomeScreenState extends State<HealthBeneficiaryHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeHealthIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: kMarginCardMedium,
                  left: kMarginMedium_2,
                  right: kMarginMedium_3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(AppStrings.beneficiary,
                        style: context.appFonts.bodySmall()?.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            )),
                  ),
                  GestureDetector(
                    onTap: () {
                      CustomNavigationHelper.router
                          .push(Routes.healthBeneficiaryInfo1Path.path);
                    },
                    child: Icon(
                      Icons.add_circle_outline_rounded,
                      color: context.appColors.colorLabel,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: context.appColors.colorPrimary,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kMarginCardMedium, vertical: kMarginCardMedium),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: kMarginSmall_2, vertical: kMarginMedium_3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(boxRadius),
                    border: Border.all(color: context.appColors.colorPrimary)),
                child: Row(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text('name'),
                    ),
                    Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            const Expanded(child: Text('Occupation')),
                            GestureDetector(
                              onTap: (){
                                CustomNavigationHelper.router
                                    .push(Routes.healthBeneficiaryInfo1Path.path);
                              },
                              child: Icon(
                                Icons.edit_document,
                                color:
                                    context.appColors.colorTextInputPlaceHolder,
                              ),
                            ),
                            const SizedBox(width: kMarginCardMedium,),
                            Icon(
                              Icons.delete_outline_rounded,
                              color: context.appColors.colorLabel,
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: kMarginCardMedium_2),
        child: NextBtnWidget(
          onNextPressed: () {

          },
          txt: 'next_btn_txt'.tr(),
          buyOnlineStyle: true,
        ),
      ),
    );
  }
}
