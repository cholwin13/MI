import 'package:json_annotation/json_annotation.dart';

part 'life_pc_payment_request.g.dart';

@JsonSerializable()
class LifePCPaymentRequest {
  @JsonKey(name: 'productId')
  String productId;

  @JsonKey(name: 'sumInsured')
  double sumInsured;

  @JsonKey(name: 'paymentType')
  String paymentType;

  @JsonKey(name: 'keyFactorMap')
  Map<String, String> keyFactorMap;

  LifePCPaymentRequest(
      this.productId, this.sumInsured, this.paymentType, this.keyFactorMap);

  factory LifePCPaymentRequest.fromJson(Map<String, dynamic> json) => _$LifePCPaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LifePCPaymentRequestToJson(this);
}