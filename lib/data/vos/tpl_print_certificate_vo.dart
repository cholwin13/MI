
import 'package:json_annotation/json_annotation.dart';

part 'tpl_print_certificate_vo.g.dart';

@JsonSerializable()
class TPLPrintCertificateVO {
  @JsonKey(name: "id")
  String? id;

  @JsonKey(name: "vehicle_no")
  String? vehicleNo;

  @JsonKey(name: "period_from")
  String? periodFrom;

  @JsonKey(name: "period_to")
  String? periodTo;

  TPLPrintCertificateVO(
    this.id,
    this.vehicleNo,
    this.periodFrom,
    this.periodTo,
  );

  factory TPLPrintCertificateVO.fromJson(Map<String, dynamic> json) => _$TPLPrintCertificateVOFromJson(json);

  Map<String, dynamic> toJson() => _$TPLPrintCertificateVOToJson(this);
}
