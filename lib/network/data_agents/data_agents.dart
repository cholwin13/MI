import 'package:test_pj_mi/data/vos/tpl_print_certificate/tpl_print_certificate_vo.dart';
import 'package:test_pj_mi/network/responses/tpl_print_certificate_response.dart';

import '../../core/data_state.dart';

abstract class DataAgent {
  // void getTPLPrintCertificate(String vehicleNo);
  // Future<List<TPLPrintCertificateVO>> getTPLPrintCertificate(String vehicleNo); // After implemented Retrofit

  Future<DataState<TPLPrintCertificateResponse>> getRecordHistory(String vehicleNo);
}

// abstract class TplPrintCertificateRecordRepo {
//   Future<DataState<TPLPrintCertificateResponse>> getRecordHistory(String vehicleNo);
//
// }