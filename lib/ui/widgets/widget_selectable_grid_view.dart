import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:test_pj_mi/ui/widgets/selectable_grid_view_vo.dart';

import '../../helper/dimens.dart';

class SelectableGridView extends StatefulWidget {
  final List<SelectableGridViewVO> cardList;
  final bool? isLifePC;

  const SelectableGridView({super.key, required this.cardList, this.isLifePC});

  @override
  State<SelectableGridView> createState() => _SelectableGridViewState();
}

class _SelectableGridViewState extends State<SelectableGridView> {
  int isSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return widget.isLifePC == true
        ? GridView(
      padding: const EdgeInsets.symmetric(
          vertical: kMarginMedium_3, horizontal: kMarginCardMedium),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisExtent: MediaQuery.of(context).size.height / 6,
      ),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
      children: List.generate(widget.cardList.length, (index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                // print('ID is ====> ${widget.cardList[0].id}');
                setState(() {
                  isSelectedIndex = index;
                });
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 9,
                child: Container(
                  decoration: BoxDecoration(
                    border: isSelectedIndex == index
                        ? Border.all(
                        color: context.appColors.colorPrimary)
                        : Border.all(
                        color: context.appColors.colorBtnGray),
                    borderRadius: BorderRadius.circular(boxRadius),
                    color: isSelectedIndex == index
                        ? context.appColors.colorPrimary
                        : context.appColors.colorBtnGray,
                  ),
                  child: widget.cardList[index].isLifePeriod == true
                      ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.cardList[index].title,
                        style: context.appFonts
                            .bodySmall()
                            ?.copyWith(
                            color: isSelectedIndex == index
                                ? context.appColors.colorGold
                                : Colors.white,
                            fontSize: textHeading1X,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        widget.cardList[index].descTxt ?? '',
                        style: context.appFonts
                            .bodySmall()
                            ?.copyWith(
                            color: isSelectedIndex == index
                                ? context.appColors.colorGold
                                : Colors.white,
                            fontSize: textSmall2X),
                      ),
                    ],
                  )
                      : Center(
                      child: Text(
                        widget.cardList[index].title,
                        style: context.appFonts.bodySmall()?.copyWith(
                            color: isSelectedIndex == index
                                ? context.appColors.colorGold
                                : Colors.white,
                            fontSize: textSmall),
                      )),
                ),
              ),
            ),
          ],
        );
      }),
    )
        : GridView(
      padding: const EdgeInsets.symmetric(
          vertical: kMarginMedium_3, horizontal: kMarginCardMedium),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisExtent: 170,
      ),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
      children: List.generate(widget.cardList.length, (index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                // print('ID is ====> ${widget.cardList[0].id}');
                setState(() {
                  isSelectedIndex = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: isSelectedIndex == index
                      ? Border.all(color: context.appColors.colorPrimary)
                      : Border.all(color: context.appColors.colorBtnGray),
                  borderRadius: BorderRadius.circular(boxRadius),
                  color: isSelectedIndex == index
                      ? context.appColors.colorPrimary
                      : context.appColors.colorBtnGray,
                ),
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  widget.cardList[index].icon ?? '',
                  width: iconLarge_3,
                  height: iconLarge_3,
                  color: context.appColors.colorGold,
                ),
              ),
            ),
            const SizedBox(
              height: kMarginSmall,
            ),
            Text(
              widget.cardList[index].title,
              textAlign: TextAlign.center,
              style: context.appFonts.bodySmall()?.copyWith(
                // fontSize: 10.0,
                  color: context.appColors.colorPrimary,
                  fontWeight: FontWeight.w600),
            ),
          ],
        );
      }),
    );
  }
}