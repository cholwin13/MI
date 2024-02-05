import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../helper/app_color.dart';
import '../../../helper/app_images.dart';
import '../../../helper/app_strings.dart';
import '../../../helper/dimens.dart';
import '../../widgets/app_bar_home.dart';
import '../drawer/DrawerScreen.dart';

class FAQs extends StatelessWidget {
  const FAQs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(
        titleIcon: Image.asset(
          AppImages.sideMenuFaqIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      drawer: const DrawerScreen(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Accordion(
              headerBackgroundColor: Colors.white,
              headerBorderColor: context.appColors.colorPrimary,
              headerBorderWidth: 1,
              contentBorderWidth: 1,
              contentHorizontalPadding: 20,
              scaleWhenAnimating: true,
              openAndCloseAnimation: true,
              headerPadding:
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15),
              sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              sectionClosingHapticFeedback: SectionHapticFeedback.light,
              maxOpenSections: 21,
              disableScrolling: true,
              rightIcon: Icon(Icons.keyboard_arrow_down,
                  color: context.appColors.colorPrimary, size: 30.0),
              leftIcon: Image.asset(
                AppImages.sideMenuFaqIcon,
                width: iconLarge,
                height: iconLarge,
              ),
              children: [
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question1,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer1,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question2,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer2,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question3,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer3,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question4,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer4,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question5,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer5,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question6,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer6,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question7,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer7,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question8,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer8,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question9,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer9,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question10,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer10,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question11,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer11,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question12,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer12,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question13,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer13,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question14,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer14,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question15,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer15,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question16,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer16,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question17,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer17,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question18,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer18,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question19,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer19,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question20,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer20,
                      style: context.appFonts.headlineSmall()),
                ),
                AccordionSection(
                  contentVerticalPadding: 20,
                  header: Text(
                    AppStrings.question21,
                    style: TextStyles.headlineSmall(
                      context,
                      color: context.appColors.colorPrimary,
                    ),
                  ),
                  content: Text(AppStrings.answer21,
                      style: context.appFonts.headlineSmall()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TextStyles {
  static TextStyle? headlineSmall(BuildContext context, {Color? color}) {
    return context.appFonts.headlineSmall()?.copyWith(color: color);
  }
}
