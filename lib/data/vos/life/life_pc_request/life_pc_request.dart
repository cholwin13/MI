import 'package:json_annotation/json_annotation.dart';

part 'life_pc_request.g.dart';

@JsonSerializable()
class LifePCRequest {
  @JsonKey(name: 'productId')
  String productId;

  @JsonKey(name: 'sumInsured')
  double? sumInsured;

  @JsonKey(name: 'paymentType')
  String? paymentType;

  @JsonKey(name: 'unit')
  int? unit;

  @JsonKey(name: 'keyFactorMap')
  Map<String,String>? keyFactorMap;


  LifePCRequest(this.productId, this.sumInsured, this.paymentType, this.unit,
      this.keyFactorMap);

  factory LifePCRequest.fromJson(Map<String, dynamic> json) => _$LifePCRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LifePCRequestToJson(this);
}