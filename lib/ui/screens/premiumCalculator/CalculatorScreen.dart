import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_home.dart';
import '../../widgets/card_view_vo.dart';
import '../../widgets/widget_card_view.dart';
import '../../widgets/widget_slider.dart';
import '../drawer/DrawerScreen.dart';
import 'generalInsurance/cashInSafe/cashInSafe_premium_calculator_screen.dart';
import 'generalInsurance/cashInTransit/cashInTransit_premium_calculator_screen.dart';
import 'generalInsurance/fidelity/fidelity_premium_calculator_screen.dart';
import 'generalInsurance/fireAllied/fire_premium_calculator_screen.dart';
import 'generalInsurance/marineCargo/marine_cargo_premium_calculator_screen.dart';
import 'generalInsurance/marineHull/marine_hull_premium_calculator_screen.dart';
import 'generalInsurance/motor/motor_premium_calculator_screen.dart';
import 'generalInsurance/personalAccidentAndDisease/personalAccident_premium_calculator_screen.dart';
import 'generalInsurance/thirdParty/tpl_premium_calculator_car_number.dart';
import 'generalInsurance/travel/travel_premium_calculator_screen.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  bool isLeftBtnSelected = true;

  final List<CardViewVO> generalList = [
    CardViewVO(AppImages.generalTlpIcon, 'tpl_title', const TplPremiumCalculatorCarNumberScreen()),

    CardViewVO(AppImages.generalMotorIcon, 'motor_title', const MotorPremiumCalculatorScreen()),

    CardViewVO(AppImages.generalFireAlliedIcon, 'fire_and_allied_title', const FirePremiumCalculatorScreen()),

    CardViewVO(AppImages.generalFidelityIcon, 'fidelity_title', const FidelityPremiumCalculatorScreen()),

    CardViewVO(AppImages.generalCashInSafeIcon, 'cash_in_safe_title', const CashInSafePremiumCalculatorScreen()),

    CardViewVO(AppImages.generalCashInTransitIcon, 'cash_in_transit_title', const CashInTransitPremiumCalculator()),

    CardViewVO(AppImages.generalPersonalAccidenntIcon, 'personal_accident_title', const PersonalAccidentPremiumCalculatorScreen()),

    CardViewVO(AppImages.generalMarineIcon, 'marine_cargo_title', const MarineCargoPremiumCalculatorScreen()),

    CardViewVO(AppImages.generalMarineHullIcon, 'marine_hull_and_machinery_title', const MarineHullPremiumCalculatorScreen()),

    CardViewVO(AppImages.generalTravelIcon, 'travel_title', const TravelPremiumCalculatorScreen()),
  ];

  final List<CardViewVO> lifeList = [
    CardViewVO(AppImages.generalTlpIcon, 'tpl_title', const TplPremiumCalculatorCarNumberScreen()),

    CardViewVO(AppImages.generalMotorIcon, 'motor_title', const MotorPremiumCalculatorScreen()),

    CardViewVO(AppImages.generalFireAlliedIcon, 'fire_and_allied_title', const FirePremiumCalculatorScreen()),

    CardViewVO(AppImages.generalFidelityIcon, 'fidelity_title', const FidelityPremiumCalculatorScreen()),

    CardViewVO(AppImages.generalCashInSafeIcon, 'cash_in_safe_title', const CashInSafePremiumCalculatorScreen()),

    CardViewVO(AppImages.generalCashInTransitIcon, 'cash_in_transit_title', const CashInTransitPremiumCalculator()),

    CardViewVO(AppImages.generalPersonalAccidenntIcon, 'personal_accident_title', const PersonalAccidentPremiumCalculatorScreen()),

    CardViewVO(AppImages.generalMarineIcon, 'marine_cargo_title', const MarineCargoPremiumCalculatorScreen()),

    CardViewVO(AppImages.generalMarineHullIcon, 'marine_hull_and_machinery_title', const MarineHullPremiumCalculatorScreen()),

    CardViewVO(AppImages.generalTravelIcon, 'travel_title', const TravelPremiumCalculatorScreen()),
  ];

  // final List<CardViewVO> lifeList = [
  //   CardViewVO(AppImages.lifePublicIcon, 'public_life_insurance', const PublicLifeAssuranceScreen()),
  //
  //   CardViewVO(AppImages.lifeShortTermEndowmentIcon, 'short_term_endowment_insurance', const ShortTermEndowmentPCScreen()),
  //
  //   CardViewVO(AppImages.lifeStudentIcon, 'student_insurance', const StudentLifeScreen()),
  //
  //   CardViewVO(AppImages.lifeFarmerIcon, 'farmer_insurance', const FarmerLifeScreen()),
  //
  //   CardViewVO(AppImages.lifeSnakeBiteIcon, 'snake_insurance', const SnakeBitePCScreen()),
  //
  //   CardViewVO(AppImages.lifeGroupIcon, 'group_insurance', const GroupLifeScreen()),
  //
  //   CardViewVO(AppImages.lifeSportMenIcon, 'sportsmen_insurance', const SportMenPCScreen()),
  //
  //   CardViewVO(AppImages.lifeHealthIcon, 'health_insurance', const HealthLifeScreen()),
  //
  //   CardViewVO(AppImages.lifeCriticalIcon, 'critical_insurance', const CriticalIllnessPCScreen()),
  //
  //   CardViewVO(AppImages.lifeMicroIllnessIcon, 'micro_health_insurance', const MicroHealthPCScreen()),
  //
  //   CardViewVO(AppImages.lifeSeamanIcon, 'seaman_insurance', const SeamanLifeScreen()),
  //
  //   CardViewVO(AppImages.lifeShoreJobIcon, 'shore_job_insurance', const ShoreJobPCScreen()),
  //
  //   CardViewVO(AppImages.lifePublicTermIcon, 'public_insurance', const PublicTermLifePCScreen()),
  //
  //   CardViewVO(AppImages.lifeGovPersonalShortTermIcon, 'government_personal_insurance', const GovernmentPersonalScreen()),
  //
  //   CardViewVO(AppImages.lifeGovPersonalShortTermIcon, 'government_short_term_insurance', const GovernmentPersonalShortTermScreen()),
  //
  //   CardViewVO(AppImages.lifeSeamanIcon, 'seaman_plan_insurance', const SeamanPlanPCScreen()),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBarHome(
        titleIcon: Image.asset(
          AppImages.homeCalculatorIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      drawer: const DrawerScreen(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kMarginCardMedium_2,
          vertical: kMarginCardMedium_2,
        ),
        child: Column(
          children: [
            SliderWidget(
              leftBtnTxt: 'home_general_insurance',
              rightBtnTxt: 'home_life_insurance',
              isSelectLeft: isLeftBtnSelected,
              onClick: (bool value) {
                setState(() {
                  isLeftBtnSelected = value;
                });
              },
            ),
            // Expanded(child: isLeftBtnSelected ? const GeneralPremiumCalculatorScreen() : const LifePremiumCalculatorScreen())
            const SizedBox(height: kMarginMedium,),
            Center(
              child: Text(
                'Choose One To Calculate',
                style: context.appFonts.titleSmall()?.copyWith(
                    fontSize: textRegular, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(child: CardViewWidget(cardList: isLeftBtnSelected ? generalList : lifeList))
          ],
        ),
      ),
    );
  }
}