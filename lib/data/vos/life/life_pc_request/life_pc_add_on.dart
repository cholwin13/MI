import 'package:json_annotation/json_annotation.dart';

part 'life_pc_add_on.g.dart';

@JsonSerializable()
class LifePCAddOn{
  @JsonKey(name: 'addOnId')
  String addOnId;

  @JsonKey(name: 'value')
  int? value;

  @JsonKey(name: 'keyFactorMap')
  Map<String, dynamic> keyFactorMap;

  LifePCAddOn(this.addOnId, this.value, this.keyFactorMap);
}