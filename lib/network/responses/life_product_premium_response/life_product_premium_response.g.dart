// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_product_premium_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LifeProductPremiumResponse _$LifeProductPremiumResponseFromJson(
        Map<String, dynamic> json) =>
    LifeProductPremiumResponse(
      json['id'] as String,
      json['name'] as String,
      (json['premium'] as num).toDouble(),
      (json['mainPremium'] as num).toDouble(),
    );

Map<String, dynamic> _$LifeProductPremiumResponseToJson(
        LifeProductPremiumResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'premium': instance.premium,
      'mainPremium': instance.mainPremium,
    };
