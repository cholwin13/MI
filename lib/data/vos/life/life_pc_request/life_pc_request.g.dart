// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_pc_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LifePCRequest _$LifePCRequestFromJson(Map<String, dynamic> json) =>
    LifePCRequest(
      json['productId'] as String,
      Map<String, String>.from(json['keyFactorMap'] as Map),
    );

Map<String, dynamic> _$LifePCRequestToJson(LifePCRequest instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'keyFactorMap': instance.keyFactorMap,
    };
