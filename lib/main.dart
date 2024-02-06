import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'helper/languages.dart';
import 'helper/navigation_routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: Languages.values.map((e) => e.locale).toList(),
    fallbackLocale: Languages.english.locale,
    useFallbackTranslations: true,
    path: "assets/localizations",
    child: const MyApp(),
  ));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: CustomNavigationHelper.router,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}

