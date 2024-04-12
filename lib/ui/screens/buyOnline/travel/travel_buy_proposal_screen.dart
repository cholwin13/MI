import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../lifeInsurance/widget/widget_two_column_txt.dart';
import '../widget/widget_buy_online_title_text.dart';

class TravelBuyProposalScreen extends StatefulWidget {
  final int id;

  const TravelBuyProposalScreen({super.key, required this.id});

  @override
  State<TravelBuyProposalScreen> createState() =>
      _TravelBuyProposalScreenState();
}

class _TravelBuyProposalScreenState extends State<TravelBuyProposalScreen> {
  late String appBarImage;

  List<Map<String, dynamic>> travelList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appBarImage = widget.id == 0
        ? AppImages.generalDomesticTravel
        : AppImages.generalOverseaTravel;

    travelList = [
      {'id': 1, 'township': 'Township1', 'expanded': false},
      {'id': 2, 'township': 'Township2', 'expanded': false},
      {'id': 3, 'township': 'Township3', 'expanded': false},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          appBarImage,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Column(
        children: [
          const BuyOnlineTitleTxt(
            titleTxt: AppStrings.buyProposal,
            pageNo: '',
          ),
          Divider(
            color: context.appColors.colorLabel,
          ),
          if (travelList.isNotEmpty)
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: travelList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(kMarginSmall_2),
                          margin: const EdgeInsets.symmetric(horizontal: kMarginCardMedium),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(229, 231, 233, 1),
                            border: travelList[index]['expanded'] ?
                            Border(bottom: BorderSide(color: context.appColors.colorTextInputPlaceHolder))
                                : null,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                // blurRadius: 5,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'name',
                                  style: context.appFonts.bodySmall(),
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 30,
                                color: context.appColors.colorLabel,
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'premium value',
                                      style: context.appFonts.bodySmall(),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          travelList[index]['expanded'] = !travelList[index]['expanded'];
                                        });
                                      },
                                      child: Icon(
                                        Icons.add_circle_outline_rounded,
                                        color: context.appColors.colorLabel,
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          if(widget.id == 0){
                                            CustomNavigationHelper.router.push(
                                                Routes.travelProposalPath.path,
                                                extra: 0
                                            );
                                          }else {
                                            CustomNavigationHelper.router.push(
                                                Routes.travelProposalPath.path,
                                                extra: 1
                                            );
                                          }
                                        },
                                        child: Icon(
                                          Icons.edit_document,
                                          color: context.appColors
                                              .colorTextInputPlaceHolder,
                                        )),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            travelList.removeAt(index);
                                          });
                                        },
                                        child: Icon(
                                          Icons.delete_outline_rounded,
                                          color: context.appColors.colorLabel,
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        if(travelList[index]['expanded'])
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            height: 160,
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(horizontal: kMarginCardMedium),
                            padding: const EdgeInsets.all(kMarginSmall_2),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(229, 231, 233, 1),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  // blurRadius: 5,
                                  offset: const Offset(
                                      0, 1),
                                ),
                              ],
                            ),
                            child: const Column(
                              children: [
                                DetailsInfoTxtWidget(
                                  txt1: 'NRC',
                                  txt2: 'txt2',
                                ),
                                DetailsInfoTxtWidget(
                                  txt1: 'Unit',
                                  txt2: 'txt2',
                                ),
                                DetailsInfoTxtWidget(
                                  txt1: 'Basic Premium',
                                  txt2: 'txt2',
                                ),
                                DetailsInfoTxtWidget(
                                  txt1: 'Departure Date',
                                  txt2: 'txt2',
                                ),
                                DetailsInfoTxtWidget(
                                  txt1: 'Arrival Date',
                                  txt2: 'txt2',
                                ),
                                DetailsInfoTxtWidget(
                                  txt1: 'Route',
                                  txt2: 'txt2',
                                ),
                              ],
                            ),
                          ),
                        const SizedBox(height: kMarginCardMedium,)
                      ],
                    );
                  }),
            )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: kMarginExtraLarge_2,
        child: Column(
          children: [
            Divider(
              color: context.appColors.colorPrimary,
            ),
            const SizedBox(
              height: kMarginSmall,
            ),
            const Text('Total Premium : MMK'),
            // SizedBox(height: kMarginMedium,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NextBtnWidget(
                  onNextPressed: () {},
                  txt: AppStrings.addMore,
                ),
                NextBtnWidget(
                  onNextPressed: () {},
                  txt: AppStrings.buy,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsInfoTxtWidget extends StatelessWidget {
  final String txt1;
  final String txt2;

  const DetailsInfoTxtWidget({
    super.key,
    required this.txt1,
    required this.txt2
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            txt1,
            style: context.appFonts.bodySmall()?.copyWith(
                height: 2
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            txt2,
            style: context.appFonts.bodySmall()?.copyWith(
                height: 2
            ),
          ),
        ),
      ],
    );
  }
}
