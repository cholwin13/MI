import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/personal_accident/pa_proposal_info_screen.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/seaman/seaman_payment_info_details_screen.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/tpl_driver/driver_insure_info_screen.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/travel/travel_home_screen.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/widget/widget_buy_online_card_view_vo.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/widget/widget_buy_online_navigable_grid_view.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_widget.dart';
import '../premiumCalculator/generalInsurance/thirdParty/tpl_premium_calculator_car_number.dart';
import 'air_travel/air_travel_home_screen.dart';
import 'health/health_proposal_info_screen.dart';
import 'inbound/inbound_product_info_screen.dart';
import 'outbound_home_screen.dart';

class BuyOnline extends StatelessWidget {
  const BuyOnline({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BuyOnlineCardViewVO> cardList = [
      BuyOnlineCardViewVO(AppImages.generalTlpIcon, 'tpl_title',
          const TplPremiumCalculatorCarNumberScreen(), false),
      BuyOnlineCardViewVO(AppImages.generalInboundIcon, 'inbound_title',
          const InboundProductInfoScreen(), false),
      BuyOnlineCardViewVO(AppImages.generalInboundIcon, 'outbound_travel_insurance',
          const OutboundHomeScreen(), false),
      // BuyOnlineCardViewVO(AppImages.lifeSeamanIcon, 'seaman_insurance',
      //     const SeamanProductInfoScreen(), false),
      BuyOnlineCardViewVO(AppImages.lifeSeamanIcon, 'seaman_insurance',
          const SeamanPaymentInfoDetailsScreen(), false),
      BuyOnlineCardViewVO(AppImages.generalMotorIcon, 'tpl_driver_insure_title',
          const TplDriverInsureInfoScreen(), false),
      BuyOnlineCardViewVO(AppImages.lifePABuyOnline, 'pa_title',
          const PAProposalInfoScreen(), true),
      BuyOnlineCardViewVO(AppImages.generalTravelIcon, 'travel_title',
          const TravelHomeScreen(), true),
      BuyOnlineCardViewVO(AppImages.generalAirTravel, 'travel_title',
          const AirTravelHomeScreen(), true),
      BuyOnlineCardViewVO(AppImages.lifeHealthIcon, 'health_insurance',
          const HealthProposalInfoScreen(), true),
    ];

    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.homeBuyOnline,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: BuyOnlineNavigableGridViewWidget(cardList: cardList),
    );
  }
}
