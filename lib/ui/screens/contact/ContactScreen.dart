import 'package:flutter/material.dart';

import '../../../helper/app_color.dart';
import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_home.dart';
import '../../widgets/widget_slider.dart';
import '../drawer/DrawerScreen.dart';
import 'branches_screen.dart';
import 'contact_us.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool isLeftBtnSelected = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("change didChangeDependencies");
  }
  @override
  void didUpdateWidget(covariant ContactScreen oldWidget) {
    print("change didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(
        titleIcon: Image.asset(
          AppImages.sideMenuContactUsIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      drawer: const DrawerScreen(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kMarginCardMedium_2,
          vertical: kMarginCardMedium_2,
        ),
        child: Column(
          children: [
            SliderWidget(
              leftBtnTxt: 'contact_us',
              rightBtnTxt: 'branches',
              isSelectLeft: isLeftBtnSelected,
              onClick: (bool value) {
                setState(() {
                  isLeftBtnSelected = value;
                });
              },
            ),
            Expanded(child: isLeftBtnSelected ? const ContactUS() : const BranchesScreen())
          ],
        ),
      ),
    );
  }
}
