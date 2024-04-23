import 'package:dio/dio.dart';
import 'package:test_pj_mi/data/vos/tpl_print_certificate_vo.dart';
import 'package:test_pj_mi/network/api_services.dart';
import 'package:test_pj_mi/network/data_agents/data_agents.dart';

class RetrofitDataAgentImpl extends DataAgent{
  late APIServices apiServices;

  static RetrofitDataAgentImpl? _singleton;

  factory RetrofitDataAgentImpl() {
    _singleton ??= RetrofitDataAgentImpl._internal();
    return _singleton!;
  }

  RetrofitDataAgentImpl._internal() {
    final dio = Dio();
    apiServices = APIServices(dio);
  }

  @override
  Future<List<TPLPrintCertificateVO>> getTPLPrintCertificate(String vehicleNo) {
    return apiServices.getTPLPrintCertificate(vehicleNo).asStream().map((response) => response?.data ?? []).first;
  }

}