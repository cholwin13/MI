import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_product_info_detail_title.dart';
import '../widget/widget_buy_online_build_two_button_row.dart';

class InboundProductInfoScreen extends StatefulWidget {
  const InboundProductInfoScreen({super.key});

  @override
  State<InboundProductInfoScreen> createState() => _InboundProductInfoScreenState();
}

class _InboundProductInfoScreenState extends State<InboundProductInfoScreen> {

  late String selectedItem;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedItem = '';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.generalInboundIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
        actions: [
          PopupMenuButton(onSelected: (value) {
            setState(() {
              selectedItem = value.toString();
            }
            );
            if(selectedItem == 'hospitalNetwork'){
              CustomNavigationHelper.router
                  .push(Routes.inboundHospitalNetworkPath.path);
            }
            else{
              launchUrl(Uri.parse('https://www.mminsurance.gov.mm/wp-content/uploads/2022/04/Inbound-Travel-Accident-Insurance-Claim-Form_new.pdf'));
            }
          }, itemBuilder: (BuildContext bc) {
            return const [
              PopupMenuItem(
                value: 'hospitalNetwork',
                child: Text(AppStrings.hospitalNetwork),
              ),
              PopupMenuItem(
                value: 'downloadClaimForm',
                child: Text(AppStrings.downloadClaimForm),
              ),
            ];
          }, icon: Image.asset(AppImages.generalMoreIcon, width: iconMedium_2, height: iconMedium_2,),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(kMarginMedium_3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProductInfoDetailTitleWidget(
                      titleTxt: 'inbound_title',
                    ),
                    const SizedBox(
                      height: kMarginCardMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: kMarginCardMedium_2),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       Expanded(
          //         child: FloatingActionButton.extended(
          //           heroTag: 'fab1',
          //           onPressed: () {
          //
          //           },
          //           label: Text('Continue and buy',
          //           style:  context.appFonts.bodySmall()?.copyWith(
          //               color: context.appColors.colorGold
          //           ),),
          //           icon: Image.asset(
          //               AppImages.generalInboundCart,
          //             width: 24,
          //             height: 24,
          //           ),
          //         ),
          //       ),
          //       const SizedBox(width: kMarginCardMedium_2,),
          //       Expanded(
          //         child: FloatingActionButton.extended(
          //           heroTag: 'fab2',
          //           onPressed: () {
          //
          //           },
          //           label: Text('Enquiry and Print Certificate',
          //             style:  context.appFonts.bodySmall()?.copyWith(
          //                 color: context.appColors.colorGold
          //             ),
          //             softWrap: true,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          BuyOnlineBuildTwoButtonRowWidget(
            continuePressed: (){
              CustomNavigationHelper.router.push(Routes.inboundTermsAndConditionPath.path);
            },
            enquiryPressed: (){
              CustomNavigationHelper.router.push(Routes.inboundEnquiryPath.path, extra: 'inbound');
            },
          ),
        ],
      ),
    );
  }
}
