// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tpl_print_certificate_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TPLPrintCertificateVO _$TPLPrintCertificateVOFromJson(
        Map<String, dynamic> json) =>
    TPLPrintCertificateVO(
      json['id'] as String?,
      json['vehicle_no'] as String?,
      json['period_from'] as String?,
      json['period_to'] as String?,
    );

Map<String, dynamic> _$TPLPrintCertificateVOToJson(
        TPLPrintCertificateVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicle_no': instance.vehicleNo,
      'period_from': instance.periodFrom,
      'period_to': instance.periodTo,
    };
