import 'package:json_annotation/json_annotation.dart';

part 'seaman_plan_request.g.dart';

@JsonSerializable()
class SeamanPlanRequest {
  @JsonKey(name: 'productId')
  String productId;

  @JsonKey(name: 'keyFactorMap')
  Map<String,String> keyFactorMap;

  SeamanPlanRequest(this.productId, this.keyFactorMap);

  factory SeamanPlanRequest.fromJson(Map<String, dynamic> json) => _$SeamanPlanRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SeamanPlanRequestToJson(this);
}