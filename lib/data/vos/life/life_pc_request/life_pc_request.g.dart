// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_pc_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LifePCRequest _$LifePCRequestFromJson(Map<String, dynamic> json) =>
    LifePCRequest(
      json['productId'] as String,
      (json['sumInsured'] as num?)?.toDouble(),
      json['paymentType'] as String?,
      json['unit'] as int?,
      (json['keyFactorMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      (json['addOnList'] as List<dynamic>)
          .map((e) => LifePCAddOn.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LifePCRequestToJson(LifePCRequest instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'sumInsured': instance.sumInsured,
      'paymentType': instance.paymentType,
      'unit': instance.unit,
      'keyFactorMap': instance.keyFactorMap,
      'addOnList': instance.addOnList,
    };
