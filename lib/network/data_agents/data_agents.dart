import 'package:test_pj_mi/data/vos/tpl_print_certificate_vo.dart';

abstract class DataAgent {
  // void getTPLPrintCertificate(String vehicleNo);
  Future<List<TPLPrintCertificateVO>> getTPLPrintCertificate(String vehicleNo); // After implemented Retrofit
}