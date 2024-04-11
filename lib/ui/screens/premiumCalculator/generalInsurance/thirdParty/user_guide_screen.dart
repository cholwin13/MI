import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';

import '../../../../../helper/app_images.dart';
import '../../../../../helper/dimens.dart';
import '../../../../widgets/app_bar_widget.dart';

class UserGuideScreen extends StatelessWidget {
  final String screenName;
  const UserGuideScreen({super.key, required this.screenName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.sideMenuFaqIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: SingleChildScrollView(
        child: screenName == 'tpl'
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: kMarginMedium),
                child: Column(
                  children: [
                    Image.asset(AppImages.generalTplHowToPayMpu),
                    const SizedBox(
                      height: kMarginMedium_2,
                    ),
                    Image.asset(AppImages.generalTplHowToPayQr),
                    const SizedBox(
                      height: kMarginMedium_2,
                    ),
                    Image.asset(AppImages.generalTplHowToPayOK),
                  ],
                ),
              )
            : screenName == 'online_biller'
                ? Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kMarginMedium),
                    child: Column(
                      children: [
                        Image.asset(AppImages.generalOBHowToPayMpu),
                        const SizedBox(
                          height: kMarginMedium_2,
                        ),
                        Image.asset(AppImages.generalOBHowToPayQr),
                        const SizedBox(
                          height: kMarginMedium_2,
                        ),
                        Image.asset(AppImages.generalOBHowToPayOK),
                      ],
                    ),
                  )
                : screenName == 'travel'
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kMarginMedium),
                        child: Column(
                          children: [
                            Image.asset(AppImages.generalDomesticMPU1),
                            const SizedBox(
                              height: kMarginMedium_2,
                            ),
                            Image.asset(AppImages.generalDomesticMPU1),
                            const SizedBox(
                              height: kMarginMedium_2,
                            ),
                            Image.asset(AppImages.generalDomesticQR1),
                            const SizedBox(
                              height: kMarginMedium_2,
                            ),
                            Image.asset(AppImages.generalDomesticQR2),
                            const SizedBox(
                              height: kMarginMedium_2,
                            ),
                            Image.asset(AppImages.generalDomesticOK1),
                            const SizedBox(
                              height: kMarginMedium_2,
                            ),
                            Image.asset(AppImages.generalDomesticOK2),
                            const SizedBox(
                              height: kMarginMedium_2,
                            ),
                            Image.asset(AppImages.generalDomesticOK3),
                          ],
                        ),
                      )
                    : screenName == 'oversea_travel'
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: kMarginMedium),
                            child: Column(
                              children: [
                                Image.asset(AppImages.generalOverseaMPU1),
                                const SizedBox(
                                  height: kMarginMedium_2,
                                ),
                                Image.asset(AppImages.generalOverseaMPU2),
                                const SizedBox(
                                  height: kMarginMedium_2,
                                ),
                                Image.asset(AppImages.generalOverseaQR1),
                                const SizedBox(
                                  height: kMarginMedium_2,
                                ),
                                Image.asset(AppImages.generalOverseaQR2),
                                const SizedBox(
                                  height: kMarginMedium_2,
                                ),
                                Image.asset(AppImages.generalOverseaOK1),
                                const SizedBox(
                                  height: kMarginMedium_2,
                                ),
                                Image.asset(AppImages.generalOverseaOK2),
                                const SizedBox(
                                  height: kMarginMedium_2,
                                ),
                                Image.asset(AppImages.generalOverseaOK3),
                              ],
                            ),
                          )
                        : screenName == 'domestic_air_travel'
                            ? Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: kMarginMedium),
                                child: Column(
                                  children: [
                                    Image.asset(
                                        AppImages.generalDomesticAirMpu1),
                                    const SizedBox(
                                      height: kMarginMedium_2,
                                    ),
                                    Image.asset(
                                        AppImages.generalDomesticAirMpu2),
                                    const SizedBox(
                                      height: kMarginMedium_2,
                                    ),
                                    Image.asset(
                                        AppImages.generalDomesticAirMpu3),
                                    const SizedBox(
                                      height: kMarginMedium_2,
                                    ),
                                    Image.asset(
                                        AppImages.generalDomesticAirQr1),
                                    const SizedBox(
                                      height: kMarginMedium_2,
                                    ),
                                    Image.asset(
                                        AppImages.generalDomesticAirQr2),
                                    const SizedBox(
                                      height: kMarginMedium_2,
                                    ),
                                    Image.asset(
                                        AppImages.generalDomesticAirQr3),
                                    const SizedBox(
                                      height: kMarginMedium_2,
                                    ),
                                    Image.asset(
                                        AppImages.generalDomesticAirOk1),
                                    const SizedBox(
                                      height: kMarginMedium_2,
                                    ),
                                    Image.asset(
                                        AppImages.generalDomesticAirOk2),
                                    const SizedBox(
                                      height: kMarginMedium_2,
                                    ),
                                    Image.asset(
                                        AppImages.generalDomesticAirOk3),
                                  ],
                                ),
                              )
                            : screenName == 'oversea_air_travel'
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: kMarginMedium),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                            AppImages.generalOverseaAirMpu1),
                                        const SizedBox(
                                          height: kMarginMedium_2,
                                        ),
                                        Image.asset(
                                            AppImages.generalOverseaAirMpu2),
                                        const SizedBox(
                                          height: kMarginMedium_2,
                                        ),
                                        Image.asset(
                                            AppImages.generalOverseaAirMpu3),
                                        const SizedBox(
                                          height: kMarginMedium_2,
                                        ),
                                        Image.asset(
                                            AppImages.generalOverseaAirQr1),
                                        const SizedBox(
                                          height: kMarginMedium_2,
                                        ),
                                        Image.asset(
                                            AppImages.generalOverseaAirQr2),
                                        const SizedBox(
                                          height: kMarginMedium_2,
                                        ),
                                        Image.asset(
                                            AppImages.generalOverseaAirQr3),
                                        const SizedBox(
                                          height: kMarginMedium_2,
                                        ),
                                        Image.asset(
                                            AppImages.generalOverseaAirOk1),
                                        const SizedBox(
                                          height: kMarginMedium_2,
                                        ),
                                        Image.asset(
                                            AppImages.generalOverseaAirOk2),
                                        const SizedBox(
                                          height: kMarginMedium_2,
                                        ),
                                        Image.asset(
                                            AppImages.generalOverseaAirOk3),
                                      ],
                                    ),
                                  )
                                : screenName == 'health'
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: kMarginMedium),
                                        child: Column(
                                          children: [
                                            Image.asset(AppImages
                                                .lifeHealthMpu1),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(AppImages
                                                .lifeHealthMpu2),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(AppImages
                                                .lifeHealthMpu3),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(
                                                AppImages.lifeHealthMpu4),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(
                                                AppImages.lifeHealthQr1),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(
                                                AppImages.lifeHealthQr2),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(
                                                AppImages.lifeHealthQr3),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(
                                                AppImages.lifeHealthQr4),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(
                                                AppImages.lifeHealthOk1),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(
                                                AppImages.lifeHealthOk2),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(
                                                AppImages.lifeHealthOk3),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(
                                                AppImages.lifeHealthOk4),
                                          ],
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: kMarginMedium),
                                        child: Column(
                                          children: [
                                            Image.asset(AppImages.lifePAMPU1),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(AppImages.lifePAMPU2),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(AppImages.lifeQR1),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(AppImages.lifeQR2),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(AppImages.lifePAOK1),
                                            const SizedBox(
                                              height: kMarginMedium_2,
                                            ),
                                            Image.asset(AppImages.lifePAOK2),
                                          ],
                                        ),
                                      ),
      ),
    );
  }
}
