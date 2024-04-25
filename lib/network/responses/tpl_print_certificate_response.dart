import 'package:json_annotation/json_annotation.dart';

import '../../data/vos/tpl_print_certificate/tpl_print_certificate_vo.dart';

part 'tpl_print_certificate_response.g.dart';

@JsonSerializable()
class TPLPrintCertificateResponse {
  @JsonKey(name: "code")
  String? code;

  @JsonKey(name: "status")
  String? status;

  @JsonKey(name: "message")
  String? message;

  @JsonKey(name: "data")
  List<TPLPrintCertificateVO>? data;

  TPLPrintCertificateResponse(
    this.code,
    this.status,
    this.message,
    this.data,
  );

  factory TPLPrintCertificateResponse.fromJson(Map<String, dynamic> json) =>
      _$TPLPrintCertificateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TPLPrintCertificateResponseToJson(this);
}
