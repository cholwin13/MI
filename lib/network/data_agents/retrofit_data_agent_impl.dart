import 'package:dio/dio.dart';
import 'package:test_pj_mi/data/vos/tpl_print_certificate/tpl_print_certificate_vo.dart';
import 'package:test_pj_mi/network/api_services.dart';
import 'package:test_pj_mi/network/data_agents/data_agents.dart';
import 'package:test_pj_mi/network/responses/tpl_print_certificate_response.dart';

import '../../core/data_state.dart';

class RetrofitDataAgentImpl{
  // late APIServices apiServices;

  // static RetrofitDataAgentImpl? _singleton;
  //
  // factory RetrofitDataAgentImpl() {
  //   _singleton ??= RetrofitDataAgentImpl._internal();
  //   return _singleton!;
  // }
  //
  // RetrofitDataAgentImpl._internal() {
  //   final dio = Dio();
  //   apiServices = APIServices(dio);
  // }
  final APIServices _apiServices;


  RetrofitDataAgentImpl(this._apiServices);

  // Future<TPLPrintCertificateResponse?> getTPLPrintCertificate(String vehicleNo) {
  //   print('IMPL');
  //   return _apiServices.getTPLPrintCertificate(vehicleNo);
  //   // return _apiServices.getTPLPrintCertificate(vehicleNo).asStream().map((response) => response?.data ?? []).first;
  // }

  Future<DataState<TPLPrintCertificateResponse>> getTPLPrintCertificate(String vehicleNo) async {
    try {
      print('try fun');
      final httpResponse = await _apiServices.getTPLPrintCertificate(vehicleNo);
      if(httpResponse.response.statusCode == 200) {
        print('Response 200');
        return DataSuccess(httpResponse.data);
      }else{
        print('not 200');
        return DataError(
            DioException(
              error: httpResponse.response.statusMessage,
              response: httpResponse.response,
              requestOptions: httpResponse.response.requestOptions,
            )
        );
      }

    }on DioException catch(e){
      print('catch fun');
      return DataError(e);
    }
  }

}