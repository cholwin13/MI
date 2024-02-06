import 'package:flutter/material.dart';

import '../../../helper/app_color.dart';
import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_home.dart';
import '../../widgets/widget_top_bar.dart';
import '../drawer/DrawerScreen.dart';
import 'branches.dart';
import 'contact_us.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool isLeftBtnSelected = true;
  bool isRightBtnSelected = false;

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
    Widget bodyWidget = const ContactUS();

    if (isLeftBtnSelected) {
      bodyWidget = const ContactUS();
    } else {
      bodyWidget = const Branches();
    }

    // Widget getBodyWidget(){
    //   if (isLeftBtnSelected) {
    //     return const ContactUS();
    //   } else {
    //     return const Branches();
    //   }
    // }

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
            WidgetTopBar(
              isLeftBtnSelected: isLeftBtnSelected,
              isRightBtnSelected: isRightBtnSelected,
              onLeftTap: () {
                setState(() {
                  isLeftBtnSelected = true;
                  isRightBtnSelected = false;
                });
              },
              onRightTap: () {
                setState(() {
                  isLeftBtnSelected = false;
                  isRightBtnSelected = true;
                });
              },
              leftBtnTxt: 'contact_us',
              rightBtnTxt: 'branches',
            ),
            Expanded(child: bodyWidget)
          ],
        ),
      ),
    );
  }
}
