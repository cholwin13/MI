import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_pj_mi/data/vos/seaman_plan/seaman_plan_request.dart';
import 'package:test_pj_mi/network/responses/life_product_premium_response/life_product_premium_response.dart';
import 'package:test_pj_mi/network/responses/tpl_print_certificate_response.dart';

import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: baseUrlUAT)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(endPointGetPrintCertificateForTpl)
  Future<HttpResponse<TPLPrintCertificateResponse>> getRecordHistory(
      @Query(paramVehicleNoForPrintCertificateTpl) String vehicleNo);

  @POST(endPointSeamanLifePlan)
  Future<HttpResponse<List<LifeProductPremiumResponse>>> getLifeProductPremium(
      @Body() SeamanPlanRequest seamanPlanRequest
      );

}
