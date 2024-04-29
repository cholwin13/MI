import 'package:json_annotation/json_annotation.dart';

part 'life_product_premium_response.g.dart';

@JsonSerializable()
class LifeProductPremiumResponse{
  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'premium')
  double premium;

  @JsonKey(name: 'mainPremium')
  double mainPremium;

  LifeProductPremiumResponse(
      this.id, this.name, this.premium, this.mainPremium);

  factory LifeProductPremiumResponse.fromJson(Map<String, dynamic> json) => _$LifeProductPremiumResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LifeProductPremiumResponseToJson(this);
}