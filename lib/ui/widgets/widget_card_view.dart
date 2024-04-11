import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

import '../../helper/dimens.dart';
import '../../helper/navigation_routes.dart';
import '../../routes/app_routes.dart';
import 'card_view_vo.dart';

class CardViewWidget extends StatelessWidget {
  final List<CardViewVO> cardList;

  const CardViewWidget({
    super.key,
    required this.cardList,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(cardList.length, (index) {
          return TouchableOpacity(
              activeOpacity: 0.6,
              child: Container(
                margin: const EdgeInsets.only(top: kMarginMedium),
                width: double.infinity,
                child: SizedBox(
                  height: kMarginExtraLarge,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: context.appColors.colorPrimary,
                      side: BorderSide(
                        color: context.appColors.colorPrimary,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(boxRadius_2),
                      ),
                    ),
                    onPressed: (){
                      CustomNavigationHelper.router.push(Routes.containerRoutePath.path, extra: cardList[index].childWidget);
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          cardList[index].icon,
                          width: iconMedium_3,
                          height: iconMedium_3,
                          color: context.appColors.colorPrimary,
                        ),
                        const SizedBox(
                          width: kMarginCardMedium,
                        ),
                        Expanded(
                          child: Text(
                            cardList[index].title.tr(),
                            style: context.appFonts.buttonTextSmall()?.copyWith(
                                color: context.appColors.colorPrimary
                            ),
                            maxLines: 2,
                            // overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: context.appColors.colorPrimary,
                        )
                      ],
                    ),
                  ),
                ),
              )
          );
        }),
      ),
    );
  }
}