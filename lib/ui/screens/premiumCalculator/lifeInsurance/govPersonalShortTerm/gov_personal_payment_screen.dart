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
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widget_selectable_grid_view.dart';
import '../widget/widget_period_and_payment.dart';

class GovPersonalPaymentScreen extends StatefulWidget {
  const GovPersonalPaymentScreen({super.key});

  @override
  State<GovPersonalPaymentScreen> createState() =>
      _GovPersonalPaymentScreenState();
}

class _GovPersonalPaymentScreenState extends State<GovPersonalPaymentScreen> {
  final formKey = GlobalKey<FormState>();

  final List<SelectableGridViewVO> periodCardList = [
    SelectableGridViewVO(
        id: 1,
        title: 'three_year'.tr(),
        descTxt: 'year'.tr(),
        isLifePeriod: true),
    SelectableGridViewVO(
        id: 2,
        title: 'five_year'.tr(),
        descTxt: 'year'.tr(),
        isLifePeriod: true),
    SelectableGridViewVO(
        id: 3, title: 'ten_year'.tr(), descTxt: 'year'.tr(), isLifePeriod: true)
  ];

  final List<SelectableGridViewVO> paymentCardList = [
    SelectableGridViewVO(id: 1, title: 'annual'.tr()),
    SelectableGridViewVO(id: 2, title: 'monthly'.tr()),
    SelectableGridViewVO(id: 3, title: 'quarter'.tr()),
    SelectableGridViewVO(id: 3, title: 'semi_annual'.tr()),
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.lifeGovPersonalShortTermIcon,
            color: context.appColors.colorGold,
            width: iconMedium_3,
            height: iconMedium_3,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kMarginCardMedium_2, vertical: kMarginCardMedium_2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductInfoDetailTitleWidget(
                titleTxt: 'government_short_term_insurance',
              ),
              const SizedBox(
                height: kMarginMedium_3,
              ),
              const PremiumDetailTxt(
                title: 'select_insured_period',
                image: AppImages.lifeGovShortTermPeriod,
              ),
              Expanded(
                child: SelectableGridView(
                  cardList: periodCardList,
                  isLifePC: true,
                ),
              ),
              const PremiumDetailTxt(
                title: 'select_payment_type',
                image: AppImages.lifeGovShortTermPayment,
              ),
              Expanded(
                  child: SelectableGridView(
                cardList: paymentCardList,
                isLifePC: true,
              )),
              // const Spacer(),
              const SizedBox(
                height: kMarginExtraLarge,
              ),
              KeyboardVisibilityBuilder(builder: (context, visible) {
                return visible
                    ? const SizedBox()
                    : NextBtnWidget(
                        formKey: formKey,
                        onNextPressed: () {
                          final isValid = formKey.currentState?.validate();
                          if (isValid!) {
                            CustomNavigationHelper.router.push(
                              Routes.lifePremiumDetailsPath.path,
                              extra: PremiumDetailsArguments(
                                  title: 'government_short_term_insurance',
                                  isMMK: true,
                                  appBarIcon:
                                      AppImages.lifeGovPersonalShortTermIcon,
                                isStampFee: true
                              ),
                            );
                          }
                        },
                        txt: 'next_btn_txt'.tr(),
                      );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
