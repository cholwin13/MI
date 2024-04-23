import 'package:test_pj_mi/network/data_agents/data_agents.dart';
import 'package:test_pj_mi/network/data_agents/retrofit_data_agent_impl.dart';

import '../vos/tpl_print_certificate_vo.dart';

class PrintCertificateModal {

  ///SingleTon
  static PrintCertificateModal? _singleton;

  factory PrintCertificateModal() {
    _singleton ??= PrintCertificateModal._internal();
    return _singleton!;
  }

  PrintCertificateModal._internal();

  /// Data Agent
  DataAgent dataAgent = RetrofitDataAgentImpl();

  Future<List<TPLPrintCertificateVO>> getTPLPrintCertificate(String vehicleNo) {
    // return dataAgent.getTPLPrintCertificate('9F/98667');
    return dataAgent.getTPLPrintCertificate(vehicleNo);
  }
}