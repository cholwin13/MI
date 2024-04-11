import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_pj_mi/ui/screens/MainScreen.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/buy_online.dart';
import 'package:test_pj_mi/ui/screens/calculator/CalculatorScreen.dart';
import 'package:test_pj_mi/ui/screens/contact/ContactScreen.dart';
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
import '../ui/screens/login/forget_pwd_screen.dart';
import '../ui/screens/login/login.dart';
import '../ui/screens/login/registration_screen.dart';
import '../ui/screens/settings/Settings.dart';

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


        ],
      ),
    ],
  );
}
