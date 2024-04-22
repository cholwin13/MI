import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../api_constants.dart';

class DioDataAgentImpl {
  void getTPLPrintCertificate(String vehicleNo) {
    Map<String, String> queryParameters = { PARAM_VEHICLE_NO: vehicleNo};

    Dio().get("$BASE_URL_DIO$ENDPOINT_GET_TPL_PRINT_CERTIFICATE", queryParameters: queryParameters).then((res){
      debugPrint("GET TPL DATA is ==> ${res.toString()}");
    }).catchError((error){
      debugPrint('Error is ===> ${error}');
    });
  }
}