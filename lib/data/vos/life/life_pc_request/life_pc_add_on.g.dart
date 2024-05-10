// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_pc_add_on.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LifePCAddOn _$LifePCAddOnFromJson(Map<String, dynamic> json) => LifePCAddOn(
      json['addOnId'] as String,
      json['value'] as int?,
      json['keyFactorMap'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$LifePCAddOnToJson(LifePCAddOn instance) =>
    <String, dynamic>{
      'addOnId': instance.addOnId,
      'value': instance.value,
      'keyFactorMap': instance.keyFactorMap,
    };
