import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_pj_mi/network/responses/life_product_premium_response/life_product_premium_response.dart';
import 'package:test_pj_mi/network/responses/tpl_print_certificate_response.dart';

import '../data/vos/life/life_pc_payment_request/life_pc_payment_request.dart';
import '../data/vos/life/life_pc_request/life_pc_request.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: baseUrlUAT)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(endPointGetPrintCertificateForTpl)
  Future<HttpResponse<TPLPrintCertificateResponse>> getRecordHistory(
      @Query(paramVehicleNoForPrintCertificateTpl) String vehicleNo);

  @POST(endPointLifePremiumCalculator)
  Future<HttpResponse<List<LifeProductPremiumResponse>>> getLifeProductPremium(
      @Body() LifePCRequest lifePCRequest
      );

  @POST(endPointLifePremiumCalculator)
  Future<HttpResponse<List<LifeProductPremiumResponse>>> getLifePaymentProductPremium(
      @Body() LifePCPaymentRequest lifePCPaymentRequest
      );
}
