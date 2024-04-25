import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_pj_mi/network/api_services.dart';
import 'package:test_pj_mi/network/data_agents/retrofit_data_agent_impl.dart';

var injector = GetIt.instance;

void locator(){
  Dio dio = Dio();
  injector.registerLazySingleton(() => dio);

  APIServices apiServices = APIServices(injector.call());
  injector.registerLazySingleton(() => apiServices);

  RetrofitDataAgentImpl retrofitDataAgentImpl = RetrofitDataAgentImpl(injector.call());
  injector.registerLazySingleton(() => retrofitDataAgentImpl);
}