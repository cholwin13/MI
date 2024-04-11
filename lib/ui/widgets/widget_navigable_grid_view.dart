import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

import '../../helper/dimens.dart';
import '../../helper/navigation_routes.dart';
import 'card_view_vo.dart';

class NavigableGridViewWidget extends StatelessWidget {
  final List<CardViewVO> cardList;

  const NavigableGridViewWidget({super.key,required this.cardList});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.symmetric(vertical: kMarginMedium_3, horizontal: kMarginCardMedium),
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
                  CustomNavigationHelper.router.push(Routes.containerRoutePath.path, extra: cardList[index].childWidget,);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: context.appColors.colorPrimary),
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
              ),
              const SizedBox(height: kMarginSmall,),
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