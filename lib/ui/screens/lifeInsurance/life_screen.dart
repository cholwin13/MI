import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/public_screen.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/public_term_screen.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/seaman_plan_screen.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/seaman_screen.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/shore_job_screen.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/short_term_endowment_screen.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/short_term_single_premium_screen.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/single_premium_credit_screen.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/single_premium_endowment_screen.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/smart_saving_screen.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/snake_bite_screen.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/sportmen_screen.dart';
import 'package:test_pj_mi/ui/screens/lifeInsurance/student_screen.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/card_view_vo.dart';
import '../../widgets/widget_navigable_grid_view.dart';
import 'critical_illness_screen.dart';
import 'education_screen.dart';
import 'farmer_screen.dart';
import 'gov_personal_screen.dart';
import 'gov_personal_short_term_screen.dart';
import 'group_screen.dart';
import 'health_screen.dart';
import 'micro_health_screen.dart';
import 'military_screen.dart';

class LifeScreen extends StatelessWidget {
  const LifeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.homeLifeIns,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: GeneralInsuranceHome(),
    );
  }
}

class GeneralInsuranceHome extends StatefulWidget {
  @override
  State<GeneralInsuranceHome> createState() => _CardViewWidgetState();
}

class _CardViewWidgetState extends State<GeneralInsuranceHome> {

  final List<CardViewVO> cardList = [

    CardViewVO(AppImages.lifeGovPersonalShortTermIcon, 'government_short_term_insurance', const GovPersonalShortTermScreen()),

    CardViewVO(AppImages.lifeGovPersonalShortTermIcon, 'government_personal_insurance', const GovPersonalScreen()),

    CardViewVO(AppImages.lifeMilitaryPersonalIcon, 'military_personal_life_insurance', const MilitaryScreen()),

    CardViewVO(AppImages.lifePublicIcon, 'public_life_insurance', const PublicScreen()),

    CardViewVO(AppImages.lifeShortTermEndowmentIcon, 'short_term_endowment_insurance', const ShortTermEndowmentScreen()),

    CardViewVO(AppImages.lifeEducationIcon, 'education_insurance', const EducationScreen()),

    CardViewVO(AppImages.lifeStudentIcon, 'student_insurance', const StudentScreen()),

    CardViewVO(AppImages.lifeShoreJobIcon, 'shore_job_insurance', const ShoreJobScreen()),

    CardViewVO(AppImages.lifeSeamanIcon, 'seaman_insurance', const SeamanScreen()),

    CardViewVO(AppImages.lifeFarmerIcon, 'farmer_insurance', const FarmerScreen()),

    CardViewVO(AppImages.lifeSnakeBiteIcon, 'snake_insurance', const SnakeBiteScreen()),

    CardViewVO(AppImages.lifeGroupIcon, 'group_insurance', const GroupScreen()),

    CardViewVO(AppImages.lifePublicTermIcon, 'public_insurance', const PublicTermScreen()),

    CardViewVO(AppImages.lifeSportMenIcon, 'sportsmen_insurance', const SportMenScreen()),

    CardViewVO(AppImages.lifeHealthIcon, 'health_insurance', const HealthScreen()),

    CardViewVO(AppImages.lifeCriticalIcon, 'critical_insurance', const CriticalIllnessScreen()),

    CardViewVO(AppImages.lifeMicroIllnessIcon, 'micro_health_insurance', const MicroHealthScreen()),

    CardViewVO(AppImages.lifeSinglePremiumCreditIcon, 'single_premium_credit_insurance', const SinglePremiumCreditScreen()),

    CardViewVO(AppImages.lifeShortTermSinglePremiumIcon, 'short_term_single_premium_insurance', const ShortTermSinglePremiumScreen()),

    CardViewVO(AppImages.lifeSinglePremiumEndowmentIcon, 'single_premium_insurance', const SinglePremiumEndowmentScreen()),

    CardViewVO(AppImages.lifeSmartSavingIcon, 'smart_saving_insurance', const SmartSavingScreen()),

    CardViewVO(AppImages.lifeSeamanIcon, 'seaman_plan_insurance', const SeamanPlanScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigableGridViewWidget(cardList: cardList);
  }
}