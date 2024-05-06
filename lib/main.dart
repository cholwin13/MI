import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_pj_mi/bloc/tpl_print_certificate/tpl_print_certificate_bloc.dart';
import 'package:test_pj_mi/injector.dart';
import 'package:test_pj_mi/network/data_agents/data_agents.dart';
import 'package:test_pj_mi/network/data_agents/http_data_agent_impl.dart';
import 'core/data_state.dart';
import 'helper/languages.dart';
import 'helper/navigation_routes.dart';
import 'network/api_service.dart';
import 'network/data_agents/dio_data_agent_impl.dart';
import 'network/data_agents/retrofit_data_agent_impl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  locator();

  final dio = Dio();
  final apiService = ApiService(dio);

  // final response = await apiService.getLifeProductPremium(
  //   SeamanPlanRequest(
  //       "ISPRD003001000000014110082023",
  //     {
  //       "ISSYS013001000000030730062015": "18",
  //       "ISSYS013001000000014118082023": "ISSYS0090001000000000308092023"
  //     }
  //   ),
  // );
  // print('Seaman REsponse ==> ${response.data}');

  // RetrofitDataAgentImpl test = RetrofitDataAgentImpl(injector());
  // test.getLifeProductPremium().then((dataState) {
  //   if (dataState is DataSuccess) {
  //     // List<Map<String, dynamic>>? responseData = dataState.data;
  //     print("success -..");
  //   } else if (dataState is DataError) {
  //     print("Error -....");
  //     print(dataState.error);
  //   }
  // });

  // DataAgent dataAgent = HttpDataAgentImpl();
  // DataAgent dataAgent = DioDataAgentImpl();

  // dataAgent.getTPLPrintCertificate('9F/9867');
  // dataAgent.getTPLPrintCertificate('9F/9867');

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
    return BlocProvider<TplPrintCertificateBloc>(
      create: (context) => TplPrintCertificateBloc(),
      child: MaterialApp.router(
        routerConfig: CustomNavigationHelper.router,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}

