import '../../data/vos/tpl_print_certificate_vo.dart';

class TPLPrintCertificateResponse {
  String? code;
  String? status;
  String? message;
  List<TPLPrintCertificateVO>? data;

  TPLPrintCertificateResponse(
    this.code,
    this.status,
    this.message,
    this.data,
  );
}
