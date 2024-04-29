import '../../network/responses/life_product_premium_response/life_product_premium_response.dart';
import '../screens/premiumCalculator/generalInsurance/motor/add_on_list.dart';

class PremiumDetailsArguments {
  final String title;
  final bool isMMK;
  final String appBarIcon;
  final List<AddOnList>? addOnList;
  final bool? isStampFee;
  final List<LifeProductPremiumResponse>? responseData;
  final int? amount;

  PremiumDetailsArguments({
    required this.title,
    required this.isMMK,
    required this.appBarIcon,
    this.addOnList,
    this.isStampFee,
    this.responseData,
    this.amount
  });
}