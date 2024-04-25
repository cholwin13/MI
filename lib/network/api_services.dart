import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_pj_mi/network/responses/tpl_print_certificate_response.dart';

import 'api_constants.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: BASE_URL_UAT)
abstract class APIServices {
  factory APIServices(Dio dio) = _APIServices;

  @GET(endPointGetPrintCertificate)
  Future<HttpResponse<TPLPrintCertificateResponse>> getTPLPrintCertificate(
      @Query(paramVehicleNo) String vehicleNo,
      );
}