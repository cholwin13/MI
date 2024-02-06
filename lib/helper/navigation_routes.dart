import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_pj_mi/ui/screens/MainScreen.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/buy_online.dart';
import 'package:test_pj_mi/ui/screens/calculator/CalculatorScreen.dart';
import 'package:test_pj_mi/ui/screens/contact/ContactScreen.dart';
import 'package:test_pj_mi/ui/screens/home/HomeScreen.dart';
import 'package:test_pj_mi/ui/screens/onlineBiller/online_biller.dart';
import 'package:test_pj_mi/ui/screens/printCertificate/print_certificate.dart';
import 'package:test_pj_mi/ui/screens/visionAndMission/vision_and_mission.dart';

import '../ui/screens/aboutUs/about_us.dart';
import '../ui/screens/contact/google_map_screen.dart';
import '../ui/screens/faqs/faqs.dart';
import '../ui/screens/login/Login.dart';
import '../ui/screens/settings/Settings.dart';

enum Routes {
  root('home', '/'),

  ///Home Screens
  visionAndMission('vision', '/vision'),
  homeGeneralInsurance('homeGeneralInsurance', '/homeGeneralInsurance'),
  homeLifeInsurance('homeLifeInsurance', '/homeLifeInsurance'),
  homeBuyOnline('homeBuyOnline', '/homeBuyOnline'),
  homeOnlineBiller('homeOnlineBiller', '/homeOnlineBiller'),
  homePrintCertificate('homePrintCertificate', '/homePrintCertificate'),

  /// Drawer Screens
  aboutUs('aboutUs', '/aboutUs'),
  contactPath('contact', '/contactPath'),
  faqs('faqs', '/faqs'),
  settings('setting', '/setting'),
  login('login', '/login'),
  googleMapScreen('googleMapScreen', '/googleMapScreen'),

  ///General Insurance
  tplPath('tpl', '/tpl'),
  motorPath('motor', '/motor'),
  fireAndAlliedPath('fire', '/fire'),
  burglaryPath('burglary', '/burglary'),
  fidelityPath('fidelity', '/fidelity'),
  cashInSafePath('cashInSafe', '/cashInSafe'),
  cashInTransitPath('cashInTransit', '/cashInTransit'),
  personalAccidentPath('personalAccident', '/personalAccident'),
  personalAccidentAndDisease(
      'personalAccidentAndDisease', '/personalAccidentAndDisease'),
  workmenPath('workmen', '/workmen'),
  liabilityPath('liability', '/liability'),
  contractorPath('contractor', '/contractor'),
  machineryPath('machinery', '/machinery'),
  depositPath('deposit', '/deposit'),
  marineCargoPath('marineCargo', '/marineCargo'),
  marineHullPath('marineHull', '/marineHull'),
  travelPath('travel', '/travel'),
  shipOwnerPath('shipOwner', '/shipOwner'),
  kyarFishingPath('kyarFishing', '/kyarFishing'),
  creditGuaranteePath('creditGuarantee', '/creditGuarantee'),
  reinsurancePath('reinsurance', '/reinsurance'),
  electronicEquipmentPath('electronicEquipment', '/electronicEquipment'),
  minerLiabilityPath('minerLiability', '/minerLiability'),
  erectionAllRisk('erectionAllRisk', '/erectionAllRisk'),
  contractorAllRisk('contractorAllRisk', '/contractorAllRisk'),

  /// Life Insurance
  govPersonalShortTermPath('govPersonalShortTerm', '/govPersonalShortTerm'),
  govPersonalPath('govPersonal', '/govPersonal'),
  militaryPath('military', '/military'),
  publicPath('public', '/public'),
  shortTermEndowmentPath('shortTermEndowment', '/shortTermEndowment'),
  educationPath('education', '/education'),
  studentPath('student', '/student'),
  shoreJobPath('shoreJob', '/shoreJob'),
  seamanPath('seaman', '/seaman'),
  farmerPath('farmer', '/farmer'),
  snakeBitePath('snakeBite', '/snakeBite'),
  groupPath('group', '/group'),
  publicTermPath('publicTerm', '/publicTerm'),
  sportMenPath('sportMen', '/sportMen'),
  healthPath('health', '/health'),
  criticalIllnessPath('criticalIllness', '/criticalIllness'),
  microHealthPath('microHealth', '/microHealth'),
  singlePremiumCreditPath('singlePremiumCredit', '/singlePremiumCredit'),
  shortTermSinglePremiumPath(
      'shortTermSinglePremium', '/shortTermSinglePremium'),
  singlePremiumEndowmentPath(
      'singlePremiumEndowment', '/singlePremiumEndowment'),
  smartSavingPath('smartSaving', '/smartSaving'),
  seamanPlanPath('seamanPlan', '/seamanPlan'),

  /// Bottom Navigation Screens
  homePath("home", '/homePath'),
  calculatorPath('calculator', '/calculatorPath');

  const Routes(this.name, this.path);
  final String name;
  final String path;
}

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
                routes: [
                  GoRoute(
                    path: 'subhome',
                    name: 'SubHome',
                    builder: (context, state) {
                      return VisionAndMission(
                        key: state.pageKey,
                      );
                    },
                  ),
                ],
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
          // StatefulShellBranch(
          //   routes: [
          //     GoRoute(
          //       path: Routes.visionAndMission.path,
          //       pageBuilder: (context, state) {
          //         return MaterialPage(
          //           child: const VisionAndMission(),
          //           key: state.pageKey,
          //         );
          //       },
          //     ),
          //   ],
          // ),

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
                    child: const OnlineBiller(),
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

          // ///Branch Setting
          // StatefulShellBranch(
          //   navigatorKey: _rootNavigationSetting,
          //   routes: [
          //     GoRoute(
          //       path: '/setting',
          //       name: 'Setting',
          //       builder: (context, state) {
          //         return SettingsView(
          //           key: state.pageKey,
          //         );
          //       },
          //       routes: [
          //         GoRoute(
          //           path: 'subSetting',
          //           name: 'SubSetting',
          //           builder: (context, state) {
          //             return SubSettingsView(
          //               key: state.pageKey,
          //             );
          //           },
          //         ),
          //       ],
          //     )
          //   ],
          // ),
        ],
      ),
      // GoRoute(
      //   path: '/player',
      //   name: 'Player',
      //   builder: (context, state) {
      //     return PlayerView(
      //       key: state.pageKey,
      //     );
      //   },
      // ),
    ],
  );
}
