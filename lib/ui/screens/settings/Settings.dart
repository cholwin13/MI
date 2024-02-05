import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../helper/app_color.dart';
import '../../../helper/app_fonts.dart';
import '../../../helper/app_images.dart';
import '../../../helper/dimens.dart';
import '../../../helper/languages.dart';
import '../../widgets/app_bar_home.dart';
import '../drawer/DrawerScreen.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String? _selectedOption;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _selectedOption =
        context.locale == Languages.english.locale ? 'english' : 'myanmar';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(
        titleIcon: Image.asset(
          AppImages.sideMenuSettingIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      drawer: const DrawerScreen(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
        child: Column(
          children: [
            const SizedBox(
              height: kMarginMedium_3,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.appColors.colorPrimary,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  RadioListTile<String>(
                    value: 'myanmar',
                    groupValue: _selectedOption,
                    fillColor: MaterialStateColor.resolveWith(
                            (states) => context.appColors.colorPrimary),
                    title: Row(
                      children: [
                        Image.asset(
                          AppImages.myanmarFlagIcon,
                          width: iconLarge,
                          height: iconLarge,
                        ),
                        const SizedBox(width: kMarginMedium_3),
                        Text('Myanmar',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: FontFamily.poppins.value,
                            )),
                      ],
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _selectedOption = value;
                        context.setLocale(Languages.myanmar.locale);
                      });
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  RadioListTile<String>(
                    value: 'english',
                    groupValue: _selectedOption,
                    fillColor: MaterialStateColor.resolveWith(
                            (states) => context.appColors.colorPrimary),
                    title: Row(
                      children: [
                        Image.asset(
                          AppImages.englishFlagIcon,
                          width: iconLarge,
                          height: iconLarge,
                        ),
                        const SizedBox(width: kMarginMedium_3),
                        Text('English',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: FontFamily.poppins.value,
                            )),
                      ],
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _selectedOption = value;
                        context.setLocale(Languages.english.locale);
                      });
                    },
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
