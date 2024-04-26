import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import 'network/api_constants.dart';
import 'network/api_service.dart';
import 'network/data_agents/data_agents.dart';
import 'network/data_agents/retrofit_data_agent_impl.dart';

var injector = GetIt.instance;

void locator() {
  // Dio dio = Dio();
  // injector.registerLazySingleton(() => dio);
  //
  // ApiService apiService = ApiService(injector.call());
  // injector.registerLazySingleton(() => apiService);
  //
  // TplPrintCertificateRecordHistoryRepoImpl tplPrintCertificateRecordHistoryRepoImpl = TplPrintCertificateRecordHistoryRepoImpl(injector.call());
  // injector.registerLazySingleton(() => tplPrintCertificateRecordHistoryRepoImpl);


  final dio = Dio();

  dio.options = BaseOptions(headers: {headerAccept: applicationJson, headerContentType: applicationJson});
  injector.registerSingleton<Dio>(dio);
  injector.registerSingleton<ApiService>(ApiService(injector()));

  injector.registerSingleton<RetrofitDataAgentImpl>(RetrofitDataAgentImpl(injector()));


}
