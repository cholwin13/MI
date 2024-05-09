import 'package:json_annotation/json_annotation.dart';

part 'life_pc_request.g.dart';

@JsonSerializable()
class LifePCRequest {
  @JsonKey(name: 'productId')
  String productId;

  @JsonKey(name: 'keyFactorMap')
  Map<String,String> keyFactorMap;

  LifePCRequest(this.productId, this.keyFactorMap);

  factory LifePCRequest.fromJson(Map<String, dynamic> json) => _$LifePCRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LifePCRequestToJson(this);
}