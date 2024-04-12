import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/widget/widget_buy_online_card_view_vo.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';

class BuyOnlineNavigableGridViewWidget extends StatelessWidget {
  final List<BuyOnlineCardViewVO> cardList;

  const BuyOnlineNavigableGridViewWidget({super.key, required this.cardList});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.symmetric(
          vertical: kMarginMedium_3, horizontal: kMarginCardMedium),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisExtent: 170,
      ),
      children: List.generate(cardList.length, (index) {
        return TouchableOpacity(
          activeOpacity: 0.6,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  CustomNavigationHelper.router.push(
                    Routes.containerRoutePath.path,
                    extra: cardList[index].childWidget,
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: context.appColors.colorPrimary),
                        borderRadius: BorderRadius.circular(boxRadius),
                        color: context.appColors.colorPrimary,
                      ),
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset(
                        cardList[index].icon,
                        width: iconLarge_3,
                        height: iconLarge_3,
                        color: context.appColors.colorGold,
                      ),
                    ),
                    if (cardList[index].lock)
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Image.asset(
                            AppImages.lockIcon,
                            width: 24,
                            height: 24,
                          ))
                  ],
                ),
              ),
              const SizedBox(
                height: kMarginSmall,
              ),
              Flexible(
                child: Text(
                  cardList[index].title.tr(),
                  textAlign: TextAlign.center,
                  style: context.appFonts.bodySmall()?.copyWith(
                        fontSize: 10.0,
                      ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
