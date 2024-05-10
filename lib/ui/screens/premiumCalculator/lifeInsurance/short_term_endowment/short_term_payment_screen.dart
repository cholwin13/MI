import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:test_pj_mi/data/vos/life/life_pc_request/life_pc_request.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/screens/premiumCalculator/lifeInsurance/short_term_endowment/widget/widget_short_term.dart';

import '../../../../../core/data_state.dart';
import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../../helper/navigation_routes.dart';
import '../../../../../injector.dart';
import '../../../../../network/data_agents/retrofit_data_agent_impl.dart';
import '../../../../../network/responses/life_product_premium_response/life_product_premium_response.dart';
import '../../../../../routes/app_routes.dart';
import '../../../../widgets/app_bar_widget.dart';
import '../../../../widgets/premium_details_arguments_list.dart';
import '../../../../widgets/selectable_grid_view_vo.dart';
import '../../../../widgets/widget_next_btn.dart';
import '../../../../widgets/widget_product_info_detail_title.dart';
import '../../../../widgets/widget_selectable_grid_view.dart';
import '../widget/widget_period_and_payment.dart';

class ShortTermPaymentScreen extends StatefulWidget {
  final ShortTermWidget arguments;
  const ShortTermPaymentScreen({super.key, required this.arguments});

  @override
  State<ShortTermPaymentScreen> createState() => _ShortTermPaymentScreenState();
}

class _ShortTermPaymentScreenState extends State<ShortTermPaymentScreen> {
  final formKey = GlobalKey<FormState>();
  late SelectableGridViewVO selectedPeriodVO;
  late SelectableGridViewVO selectedPaymentVO;

  final List<SelectableGridViewVO> periodCardList = [
    SelectableGridViewVO(
        id: 1,
        title: 'five_year'.tr(),
        descTxt: 'year'.tr(),
        isLifePeriod: true,
        periodYrs: '5'),
    SelectableGridViewVO(
        id: 2,
        title: 'seven_year'.tr(),
        descTxt: 'year'.tr(),
        isLifePeriod: true,
        periodYrs: '7'),
    SelectableGridViewVO(
        id: 3,
        title: 'ten_year'.tr(),
        descTxt: 'year'.tr(),
        isLifePeriod: true,
        periodYrs: '10')
  ];

  final List<SelectableGridViewVO> paymentCardList = [
    SelectableGridViewVO(id: 1, title: 'annual'.tr(), paymentId: "ISSYS0090001000000000129032013"),
    SelectableGridViewVO(id: 2, title: 'monthly'.tr(), paymentId: "ISSYS0090001000000000529032013"),
    SelectableGridViewVO(id: 3, title: 'quarter'.tr(), paymentId: "ISSYS0090001000000000329032013"),
    SelectableGridViewVO(id: 3, title: 'semi_annual'.tr(), paymentId: "ISSYS0090001000000000229032013"),
  ];

  @override
  void initState() {
    selectedPeriodVO = periodCardList.first;
    selectedPaymentVO = paymentCardList.first;
    super.initState();
  }

  void _onSubmit() {
    if (formKey.currentState!.validate()) {
      RetrofitDataAgentImpl test = RetrofitDataAgentImpl(injector());
      test
          .getLifeProductPremium(LifePCRequest(
              "ISPRD003001000009589529032019", // productId
              widget.arguments.sumInsure,
              selectedPaymentVO.paymentId!, // payment type
              null,
              {
            "ISSYS0130001000000000829032013": selectedPeriodVO.periodYrs!, // term
            "ISSYS013001000000030730062015": widget.arguments.age // age
          },
        null
      ))
          .then((dataState) {
        if (dataState is DataSuccess) {
          if (dataState.data != null) {
            List<LifeProductPremiumResponse> responseData =
                dataState.data as List<LifeProductPremiumResponse>;
            print("success -..");
            CustomNavigationHelper.router.push(
              Routes.lifePremiumDetailsPath.path,
              extra: PremiumDetailsArguments(
                  title: 'short_term_endowment_insurance',
                  isMMK: true,
                  appBarIcon:
                  AppImages.lifeShortTermEndowmentIcon,
                  isStampFee: true,
                  responseData: responseData,
                  sumInsure: widget.arguments.sumInsure
              ),
            );
          } else {
            print('Fail');
          }
        } else if (dataState is DataError) {
          print("Error -....");
          print(dataState.error);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBarWidget(
          titleIcon: Image.asset(
            AppImages.lifeShortTermEndowmentIcon,
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
                titleTxt: 'short_term_endowment_insurance',
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
                  selectedCard: selectedPeriodVO,
                  onCallBack: (index) {
                    setState(() {
                      selectedPeriodVO = index;
                    });
                  },
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
                selectedCard: selectedPaymentVO,
                onCallBack: (index) {
                  setState(() {
                    selectedPaymentVO = index;
                  });
                },
              )),
              const SizedBox(
                height: kMarginExtraLarge,
              ),
              KeyboardVisibilityBuilder(builder: (context, visible) {
                return visible
                    ? const SizedBox()
                    : NextBtnWidget(
                        formKey: formKey,
                        onNextPressed: () => _onSubmit(),
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
