// import 'package:dio/dio.dart';
// import 'package:test_pj_mi/data/vos/tpl_print_certificate/tpl_print_certificate_vo.dart';
// import 'package:test_pj_mi/network/api_service.dart';
// import 'package:test_pj_mi/network/data_agents/data_agents.dart';
// import 'package:test_pj_mi/network/responses/tpl_print_certificate_response.dart';
//
// import '../../core/data_state.dart';
//
// class RetrofitDataAgentImpl{
//   // late APIServices apiServices;
//
//   // static RetrofitDataAgentImpl? _singleton;
//   //
//   // factory RetrofitDataAgentImpl() {
//   //   _singleton ??= RetrofitDataAgentImpl._internal();
//   //   return _singleton!;
//   // }
//   //
//   // RetrofitDataAgentImpl._internal() {
//   //   final dio = Dio();
//   //   apiServices = APIServices(dio);
//   // }
//   final APIServices _apiServices;
//
//
//   RetrofitDataAgentImpl(this._apiServices);
//
//   // Future<TPLPrintCertificateResponse?> getTPLPrintCertificate(String vehicleNo) {
//   //   print('IMPL');
//   //   return _apiServices.getTPLPrintCertificate(vehicleNo);
//   //   // return _apiServices.getTPLPrintCertificate(vehicleNo).asStream().map((response) => response?.data ?? []).first;
//   // }
//
//   Future<DataState<TPLPrintCertificateResponse>> getTPLPrintCertificate(String vehicleNo) async {
//     try {
//       print('try fun');
//       final httpResponse = await _apiServices.getTPLPrintCertificate(vehicleNo);
//       if(httpResponse.response.statusCode == 200) {
//         print('Response 200');
//         return DataSuccess(httpResponse.data);
//       }else{
//         print('not 200');
//         return DataError(
//             DioException(
//               error: httpResponse.response.statusMessage,
//               response: httpResponse.response,
//               requestOptions: httpResponse.response.requestOptions,
//             )
//         );
//       }
//
//     }on DioException catch(e){
//       print('catch fun');
//       return DataError(e);
//     }
//   }
//
// }

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:test_pj_mi/network/responses/life_product_premium_response/life_product_premium_response.dart';
import 'package:test_pj_mi/network/responses/tpl_print_certificate_response.dart';

import '../../core/data_state.dart';
import '../../data/vos/life/seaman_plan/seaman_plan_request.dart';
import '../api_service.dart';
import 'data_agents.dart';

class RetrofitDataAgentImpl {
  final ApiService _apiService;
  RetrofitDataAgentImpl(this._apiService);

  // late ApiService _apiService;
  //
  // static TplPrintCertificateRecordHistoryRepoImpl? _singleton;
  //
  // factory TplPrintCertificateRecordHistoryRepoImpl() {
  //   _singleton ??= TplPrintCertificateRecordHistoryRepoImpl._internal();
  //   return _singleton!;
  // }
  //
  // TplPrintCertificateRecordHistoryRepoImpl._internal() {
  //   final dio = Dio();
  //   _apiService = ApiService(dio);
  // }

  // @override
  // Future<DataState<TplPrintCertificateRecordHistoryResponse>> getRecordHistory(String vehicleNo) {
  //   // TODO: implement getRecordHistory
  //   throw UnimplementedError();
  // }

  Future<DataState<TPLPrintCertificateResponse>> getRecordHistory(
      String vehicleNo) async {
    try {
      final httpResponse = await _apiService.getRecordHistory(vehicleNo);
      if (httpResponse.response.statusCode == 200) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataError(DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
        ));
      }
    } on DioException catch (e) {
      return DataError(e);
    }
  }

  Future<DataState<List<LifeProductPremiumResponse>>> getLifeProductPremium(SeamanPlanRequest seamanPlanRequest) async {
    // final httpResponse = await _apiService.getLifeProductPremium(
    //     SeamanPlanRequest(
    //         "ISPRD003001000000014110082023",
    //         {
    //           "ISSYS013001000000030730062015": "18",
    //           "ISSYS013001000000014118082023": "ISSYS0090001000000000308092023"
    //         }
    //         )
    // );
    final httpResponse =
        await _apiService.getLifeProductPremium(seamanPlanRequest);
    if (httpResponse.response.statusCode == 200) {
      return DataSuccess(httpResponse.data);
    } else {
      return DataError(DioException(
        error: httpResponse.response.statusMessage,
        response: httpResponse.response,
        requestOptions: httpResponse.response.requestOptions,
      ));
    }
  }
}
