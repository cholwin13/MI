// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_pc_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LifePCPaymentRequest _$LifePCPaymentRequestFromJson(
        Map<String, dynamic> json) =>
    LifePCPaymentRequest(
      json['productId'] as String,
      (json['sumInsured'] as num).toDouble(),
      json['paymentType'] as String,
      Map<String, String>.from(json['keyFactorMap'] as Map),
    );

Map<String, dynamic> _$LifePCPaymentRequestToJson(
        LifePCPaymentRequest instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'sumInsured': instance.sumInsured,
      'paymentType': instance.paymentType,
      'keyFactorMap': instance.keyFactorMap,
    };
