import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../helper/app_images.dart';
import '../../helper/dimens.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: context.appColors.colorGray,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                widget.onTap(0);
              },
              child: Container(
                color:
                widget.currentIndex == 0 ? context.appColors.colorPrimary : Colors.transparent,
                alignment: Alignment.center,
                height: kBottomNavigationBarHeight,
                child: Icon(
                  Icons.home_outlined,
                  color: widget.currentIndex == 0 ? Colors.white : context.appColors.colorPrimary,
                  size: iconMedium_3,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                widget.onTap(1);
              },
              child: Container(
                color:
                widget.currentIndex == 1 ? context.appColors.colorPrimary : Colors.transparent,
                alignment: Alignment.center,
                height: kBottomNavigationBarHeight,
                child: Image.asset(
                  AppImages.homeContactIcon,
                  height: iconMedium_3,
                  width: iconMedium_3,
                  color: widget.currentIndex == 1 ? Colors.white : context.appColors.colorPrimary,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                widget.onTap(2);
              },
              child: Container(
                color:
                widget.currentIndex == 2 ? context.appColors.colorPrimary : Colors.transparent,
                alignment: Alignment.center,
                height: kBottomNavigationBarHeight,
                child: Image.asset(
                  AppImages.homeCalculatorIcon,
                  height: iconMedium_3,
                  width: iconMedium_3,
                  color: widget.currentIndex == 2 ? Colors.white : context.appColors.colorPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
