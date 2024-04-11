import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/ui/screens/generalInsurance/personal_accident&disease_screen.dart';
import 'package:test_pj_mi/ui/screens/generalInsurance/personal_accident_screen.dart';
import 'package:test_pj_mi/ui/screens/generalInsurance/reinsurance_screen.dart';
import 'package:test_pj_mi/ui/screens/generalInsurance/ship_owner_screen.dart';
import 'package:test_pj_mi/ui/screens/generalInsurance/tpl_screen.dart';
import 'package:test_pj_mi/ui/screens/generalInsurance/travel_screen.dart';
import 'package:test_pj_mi/ui/screens/generalInsurance/workmen_screen.dart';

import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/card_view_vo.dart';
import '../../widgets/widget_navigable_grid_view.dart';
import 'burglary_screen.dart';
import 'cash_in_safe_screen.dart';
import 'cash_in_trasit_screen.dart';
import 'contractor_all_risk_screen.dart';
import 'contractor_screen.dart';
import 'credit_guarantee_screen.dart';
import 'deposit_screen.dart';
import 'electronic_equpiment_screen.dart';
import 'erection_all_risk_screen.dart';
import 'fidelity_screen.dart';
import 'fire&allied_screen.dart';
import 'kyar_fishing_screen.dart';
import 'liability_screen.dart';
import 'machinery_screen.dart';
import 'marine_cargo_screen.dart';
import 'marine_hull_screen.dart';
import 'miner_liability_screen.dart';
import 'motor_screen.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.homeGeneralIns,
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
  const GeneralInsuranceHome({super.key});

  @override
  State<GeneralInsuranceHome> createState() => _CardViewWidgetState();
}

class _CardViewWidgetState extends State<GeneralInsuranceHome> {

  final List<CardViewVO> cardList = [
    CardViewVO(
        AppImages.generalTlpIcon, 'tpl_title', const ThirdPartyLiabilityScreen()),
    CardViewVO(
        AppImages.generalInboundIcon, 'inbound_title', const MotorScreen()),
    CardViewVO(
        AppImages.generalMotorIcon, 'motor_title', const MotorScreen()),
    CardViewVO(
        AppImages.generalFireAlliedIcon,  'fire_and_allied_title', const FireAndAlliedScreen()),
    CardViewVO(
        AppImages.generalBurglaryIcon, 'burglary_title', const BurglaryScreen()),
    CardViewVO(
        AppImages.generalFidelityIcon, 'fidelity_title', const FidelityScreen()),
    CardViewVO(
        AppImages.generalCashInSafeIcon, 'cash_in_safe_title', const CashInSafeScreen()),
    CardViewVO(
        AppImages.generalCashInTransitIcon, 'cash_in_transit_title', const CashInTransitScreen()),
    CardViewVO(
        AppImages.generalPersonalAccidenntIcon, 'personal_accident_title', const PersonalAccidentScreen ()),
    CardViewVO(
        AppImages.generalPersonalAccidenntIcon, 'personal_accident_and_disease_title', const PersonalAccidentAndDiseaseScreen()),
    CardViewVO(
        AppImages.generalWorkmenIcon, 'workmen_compensation_title', const WorkmenScreen()),
    CardViewVO(
        AppImages.generalLiabilityIcon, 'liability_title', const LiabilityScreen()),
    CardViewVO(
        AppImages.generalContractorMachineryIcon, 'contractor_and_machinery_title', const ContractorScreen()),
    CardViewVO(
        AppImages.generalContractorMachineryIcon, 'machinery_title', const MachineryScreen()),
    CardViewVO(
        AppImages.generalDepositeIcon, 'deposit_title', const DepositScreen()),
    CardViewVO(
        AppImages.generalMarineIcon, 'marine_cargo_title', const MarineCargoScreen()),
    CardViewVO(
        AppImages.generalMarineHullIcon, 'marine_hull_and_machinery_title', const MarineHullScreen()),
    CardViewVO(
        AppImages.generalTravelIcon, 'travel_title', const TravelScreen()),
    CardViewVO(
        AppImages.generalShipOwnerIcon, 'ship_owner_title', const ShipOwnerScreen()),
    CardViewVO(
        AppImages.generalTigerFishingIcon, 'kyar_fishing_title', const KyarFishingScreen()),
    CardViewVO(
        AppImages.generalCreditIcon, 'credit_guarantee_title', const CreditGuaranteeScreen()),
    CardViewVO(
        AppImages.generalReinsuranceIcon, 'reinsurance_title', const ReinsuranceScreen()),
    CardViewVO(
        AppImages.generalElectronicIcon, 'electronic_equipment_title', const ElectronicEquipmentScreen()),
    CardViewVO(
        AppImages.generalMinerIcon, 'miner_liability_title', const MinerLiabilityScreen()),
    CardViewVO(
        AppImages.generalElectionIcon, 'electronic_all_risk_title', const ErectionAllRiskScreen()),
    CardViewVO(
        AppImages.generalAllRiskIcon, 'contractor_title', const ContractorAllRiskScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    // return GridViewWidget(cardList: cardList,);
    return NavigableGridViewWidget(cardList: cardList);
  }
}

