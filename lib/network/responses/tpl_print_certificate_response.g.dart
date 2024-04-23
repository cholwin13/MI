// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tpl_print_certificate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TPLPrintCertificateResponse _$TPLPrintCertificateResponseFromJson(
        Map<String, dynamic> json) =>
    TPLPrintCertificateResponse(
      json['code'] as String?,
      json['status'] as String?,
      json['message'] as String?,
      (json['data'] as List<dynamic>?)
          ?.map(
              (e) => TPLPrintCertificateVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TPLPrintCertificateResponseToJson(
        TPLPrintCertificateResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
