import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_pj_mi/ui/screens/MainScreen.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/buy_online.dart';
import 'package:test_pj_mi/ui/screens/contact/ContactScreen.dart';
import 'package:test_pj_mi/ui/screens/generalInsurance/general_screen.dart';
import 'package:test_pj_mi/ui/screens/home/HomeScreen.dart';
import 'package:test_pj_mi/ui/screens/login/enter_code_screen.dart';
import 'package:test_pj_mi/ui/screens/onlineBiller/online_biller_invoice_no.dart';
import 'package:test_pj_mi/ui/screens/onlineBiller/online_biller_payment_info_details_screen.dart';
import 'package:test_pj_mi/ui/screens/onlineBiller/online_biller_payment_info_screen.dart';
import 'package:test_pj_mi/ui/screens/printCertificate/print_certificate.dart';
import 'package:test_pj_mi/ui/screens/visionAndMission/vision_and_mission.dart';

import '../routes/app_routes.dart';
import '../ui/screens/aboutUs/about_us.dart';
import '../ui/screens/contact/google_map_screen.dart';
import '../ui/screens/contact/widget/branches_map.dart';
import '../ui/screens/contact/widget/branches_modal.dart';
import '../ui/screens/container_route.dart';
import '../ui/screens/faqs/faqs.dart';
import '../ui/screens/lifeInsurance/life_screen.dart';
import '../ui/screens/login/forget_pwd_screen.dart';
import '../ui/screens/login/login.dart';
import '../ui/screens/login/registration_screen.dart';
import '../ui/screens/premiumCalculator/CalculatorScreen.dart';
import '../ui/screens/premiumCalculator/generalInsurance/additional_risk_cover_screen.dart';
import '../ui/screens/premiumCalculator/generalInsurance/fireAllied/fire_additional_cover_screen.dart';
import '../ui/screens/premiumCalculator/generalInsurance/motor/cycle_usd_additional_risk_cover_screen.dart';
import '../ui/screens/premiumCalculator/generalInsurance/motor/motor_additional_risk_cover_screen.dart';
import '../ui/screens/premiumCalculator/generalInsurance/motor/motor_premium_and_coverage_detail_screen.dart';
import '../ui/screens/premiumCalculator/generalInsurance/premium_and_coverage_details_addon_screen.dart';
import '../ui/screens/premiumCalculator/generalInsurance/premium_and_coverage_details_screen.dart';
import '../ui/screens/premiumCalculator/generalInsurance/travel/local_and_foreign_travel_screen.dart';
import '../ui/screens/premiumCalculator/generalInsurance/travel/travel_pc_screen.dart';
import '../ui/screens/premiumCalculator/generalInsurance/travel/under_mile_screen.dart';
import '../ui/screens/premiumCalculator/generalInsurance/travel/widget/teavel_premium_details_screen.dart';
import '../ui/screens/premiumCalculator/lifeInsurance/govPersonalShortTerm/gov_personal_payment_screen.dart';
import '../ui/screens/premiumCalculator/lifeInsurance/health/widget/widget_additional_cover.dart';
import '../ui/screens/premiumCalculator/lifeInsurance/shore_job/shore_job_payment_screen.dart';
import '../ui/screens/premiumCalculator/lifeInsurance/short_term_endowment/short_term_payment_screen.dart';
import '../ui/screens/premiumCalculator/lifeInsurance/widget/life_premium_details_screen.dart';
import '../ui/screens/settings/Settings.dart';
import '../ui/widgets/coverage_type_picker_list.dart';
import '../ui/widgets/premium_details_arguments_list.dart';
import '../ui/widgets/widget_coverage_type_picker.dart';

class CustomNavigationHelper {
  CustomNavigationHelper._();

  static String initR = '/homePath';

  ///Private Key Navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _rootNavigationHome =
      GlobalKey<NavigatorState>(debugLabel: 'ShellHome');
  static final _rootNavigationContact = GlobalKey<NavigatorState>();
  static final _rootNavigationCalculator = GlobalKey<NavigatorState>();
  static final settingsTabNavigatorKey = GlobalKey<NavigatorState>();
  static final aboutUsTabNavigatorKey = GlobalKey<NavigatorState>();
  static final faqsTabNavigatorKey = GlobalKey<NavigatorState>();
  static final loginTabNavigatorKey = GlobalKey<NavigatorState>();
  static final googleMapScreenTabNavigatorKey = GlobalKey<NavigatorState>();

  ///GoRouter Configuring
  static final GoRouter router = GoRouter(
    initialLocation: initR,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScreen(
            navigationShell: navigationShell,
          );
        },
        branches: <StatefulShellBranch>[
          ///Home Screen
          StatefulShellBranch(
            navigatorKey: _rootNavigationHome,
            routes: [
              GoRoute(
                path: Routes.homePath.path,
                builder: (context, state) {
                  return HomeScreen(
                    key: state.pageKey,
                  );
                },
                // routes: [
                //   GoRoute(
                //     path: 'subhome',
                //     name: 'SubHome',
                //     builder: (context, state) {
                //       return VisionAndMission(
                //         key: state.pageKey,
                //       );
                //     },
                //   ),
                // ],
              ),
            ],
          ),

          ///Contact Screen
          StatefulShellBranch(
            navigatorKey: _rootNavigationContact,
            routes: [
              GoRoute(
                path: Routes.contactPath.path,
                builder: (context, state) {
                  return ContactScreen(
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          ///Calculator Screen
          StatefulShellBranch(
            navigatorKey: _rootNavigationCalculator,
            routes: [
              GoRoute(
                path: Routes.calculatorPath.path,
                builder: (context, state) {
                  return CalculatorScreen(
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          /// AboutUs screen
          StatefulShellBranch(
            navigatorKey: aboutUsTabNavigatorKey,
            routes: [
              GoRoute(
                path: Routes.aboutUs.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const AboutUs(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          ///FAQs
          StatefulShellBranch(
            navigatorKey: faqsTabNavigatorKey,
            routes: [
              GoRoute(
                path: Routes.faqs.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const FAQs(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          ///Settings
          StatefulShellBranch(
            navigatorKey: settingsTabNavigatorKey,
            routes: [
              GoRoute(
                path: Routes.settings.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const Settings(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          ///Login
          StatefulShellBranch(
            navigatorKey: loginTabNavigatorKey,
            routes: [
              GoRoute(
                path: Routes.login.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const Login(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          /// Google Map Screen Branch
          StatefulShellBranch(
            navigatorKey: googleMapScreenTabNavigatorKey,
            routes: [
              GoRoute(
                path: Routes.googleMapScreen.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const GoogleMapScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          /// Vision And Mission
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.visionAndMission.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const VisionAndMission(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          /// General Insurance
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.homeGeneralInsurance.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const GeneralScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          /// Life Insurance
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.homeLifeInsurance.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const LifeScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          ///Buy Online
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.homeBuyOnline.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const BuyOnline(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          ///Online Biller
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.homeOnlineBiller.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const OnlineBillerInvoiceNo(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.onlineBillerPaymentInfoPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const OnlineBillerPaymentInfo(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.onlineBillerPaymentInfoDetailsPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const OnlineBillerPaymentInfoDetailsScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          ///Print Certificate
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.homePrintCertificate.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const PrintCertificate(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          ///Container Route
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.containerRoutePath.path,
                pageBuilder: (context, state) {
                  Widget? childWidget = state.extra as Widget?;

                  childWidget ??= const ContainerRoute();

                  return MaterialPage(
                    child: childWidget,
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          ///Branches
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.branchesMapPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: BranchesMap(
                      arguments: state.extra as BranchData,
                    ),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          /// Login
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.forgetPwdPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const ForgetPwdScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.registrationPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const RegistrationScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.enterCodePath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const EnterCodeScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          ///General Insurance (Premium Calculator)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.generalInsAdditionalRiskCoverPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: AdditionalRiskCoverScreen(
                      arguments: state.extra as PremiumDetailsArguments,
                    ),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.generalInsPremiumDetailsAndCoverageAddOnPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: PremiumAndCoverageDetailsAddOnScreen(
                      arguments: state.extra as PremiumDetailsArguments,
                    ),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.generalInsPremiumDetailsAndCoveragePath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: PremiumAndCoverageDetailsScreen(
                      arguments: state.extra as PremiumDetailsArguments,
                    ),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          /// General Insurance (Motor)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.motorPremiumDetailPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: MotorPremiumAndCoverageDetailScreen(isMMK: state.extra as bool),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.motorPremiumCalculatorAdditionalRiskCoverPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: MotorAdditionalRiskCoverScreen(isMMK: state.extra as bool,),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.motorCycleUSDAdditionalRiskCoverPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: CycleUSDAdditionalRiskScreen(isMMK: state.extra as bool),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          ///General Insurance Premium Calculator (Fire)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.fireAdditionalCoverPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: FireAdditionalCoverScreen(isMMK: state.extra as bool),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.coverageTypePickerPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: CoverageTypePickerWidget(
                      arguments: state.extra as CoverageTypePickerList,
                    ),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          /// General Insurance Premium Calculator (Travel)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.travelPClLocalPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const LocalAndForeignTravel(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.travelPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const TravelPCScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.travelPCUnderPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const UnderMileScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.travelPremiumDetailsPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: TravelPremiumDetailsScreen(
                      arguments: state.extra as PremiumDetailsArguments,
                    ),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          ///Life Insurance
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.lifePremiumDetailsPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: LifePremiumDetailsScreen(
                      arguments: state.extra as PremiumDetailsArguments,
                    ),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          /// Life Insurance PC (Government Personnel Short Term)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.lifeGovPersonalShortTermPaymentPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const GovPersonalPaymentScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          /// Life Insurance PC (Health)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.healthAdditionalCoverPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const HealthAdditionalCoverWidget(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          /// Life Insurance PC (Shore Job)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.lifeShoreJobPaymentPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const ShoreJobPaymentScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

          /// Life Insurance PC (Shore Term)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.lifeShortTermPaymentPath.path,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    child: const ShortTermPaymentScreen(),
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),

        ],
      ),
    ],
  );
}
