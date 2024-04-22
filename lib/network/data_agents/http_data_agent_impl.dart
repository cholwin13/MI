import 'package:flutter/material.dart';

import '../api_constants.dart';
import 'package:http/http.dart' as http;

class HttpDataAgentImpl {
  void getTPLPrintCertificate(String vehicleNo){

    Map<String, String> queryParameters = { PARAM_VEHICLE_NO: vehicleNo };

    var url = Uri.https(BASE_URL_HTTP, ENDPOINT_GET_TPL_PRINT_CERTIFICATE, queryParameters);

    print('URL is ${url}');

    http.get(url).then((res){
      debugPrint('Response is ===> ${res.body.toString()}');
    }).catchError((error){
      debugPrint('Error is  ==> ${error}');
    });
  }
}