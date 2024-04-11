import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';

import '../../../helper/app_images.dart';
import '../../../helper/app_strings.dart';
import '../../../helper/dimens.dart';
import '../../../helper/navigation_routes.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/app_bar_home.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/widget_label_txt_form_field.dart';
import '../../widgets/widget_localized_paragraph_txt.dart';
import '../../widgets/widget_next_btn.dart';
import '../../widgets/widget_notice_alert_box.dart';
import '../../widgets/widget_product_info_detail_title.dart';
import '../../widgets/widgte_custom_text_form_field.dart';

class OnlineBillerInvoiceNo extends StatefulWidget {
  const OnlineBillerInvoiceNo({super.key});

  @override
  State<OnlineBillerInvoiceNo> createState() => _OnlineBillerInvoiceNoState();
}

class _OnlineBillerInvoiceNoState extends State<OnlineBillerInvoiceNo> {
  final formKey = GlobalKey<FormState>();
  TextEditingController invoiceNoController = TextEditingController();
  String invoiceNo = '';

  void handleInvoiceNoChanged(String value) {
    setState(() {
      invoiceNo = value;
    });
  }

  String? validateInvoiceNo(value) {
    if (value!.isEmpty) {
      _showDialog(context);
    } else {
      return null;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.homeOnlinePayment,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(
              height: kMarginMedium_2,
            ),
            const ProductInfoDetailTitleWidget(titleTxt: 'home_online_biller'),
            const SizedBox(
              height: kMarginMedium_2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kMarginMedium),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: LabelTxtInFormFieldWidget(
                                labelTxt: 'online_biller_invoice_no'.tr())),
                        GestureDetector(
                          onTap: () {
                            CustomNavigationHelper.router
                                .push(
                                Routes.userGuidePath.path,
                              extra: 'online_biller'
                            );
                          },
                          child: Text(
                            AppStrings.tplHowToPay,
                            style: TextStyle(
                                color: context.appColors.colorLabel,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: kMarginSmall,
                    ),
                    CustomTextFormFieldWidget(
                      onChanged: handleInvoiceNoChanged,
                      hintTxt: 'online_biller_invoice_no_hint_txt'.tr(),
                      textController: invoiceNoController,
                      validator: validateInvoiceNo,
                      textInputType: TextInputType.text,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NextBtnWidget(
        formKey: formKey,
        onNextPressed: () {
          final isValid = formKey.currentState?.validate();

          if (isValid!) {
            CustomNavigationHelper.router.push(
              Routes.onlineBillerPaymentInfoPath.path,
            );
          }
        },
        txt: 'next_btn_txt'.tr(),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => NoticeAlertBoxWidget(
        titleTxt: Text('Error',
          style: context.appFonts
              .bodySmall()
              ?.copyWith(fontSize: textRegular, fontWeight: FontWeight.bold),),
        contentTxt: Text('Please type Policy No',
            style:
            context.appFonts.bodySmall()?.copyWith(fontSize: textRegular)),
      )
    );
  }

}
