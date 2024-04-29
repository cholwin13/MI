// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seaman_plan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeamanPlanRequest _$SeamanPlanRequestFromJson(Map<String, dynamic> json) =>
    SeamanPlanRequest(
      json['productId'] as String,
      Map<String, String>.from(json['keyFactorMap'] as Map),
    );

Map<String, dynamic> _$SeamanPlanRequestToJson(SeamanPlanRequest instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'keyFactorMap': instance.keyFactorMap,
    };
