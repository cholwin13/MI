import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:test_pj_mi/network/responses/tpl_print_certificate_response.dart';

import 'api_constants.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: BASE_URL_DIO)
abstract class APIServices {
  factory APIServices(Dio dio) = _APIServices;

  @GET(endPointGetPrintCertificate)
  Future<TPLPrintCertificateResponse?> getTPLPrintCertificate(
      @Query(paramVehicleNo) String vehicleNo,
      );
}