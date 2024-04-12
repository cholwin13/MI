import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_pj_mi/helper/app_color.dart';
import 'package:test_pj_mi/helper/app_fonts.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/health/widget/resource_dto.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/health/widget/survey_answer.dart';
import 'package:test_pj_mi/ui/screens/buyOnline/health/widget/survey_question.dart';
import '../../../../helper/app_images.dart';
import '../../../../helper/app_strings.dart';
import '../../../../helper/dimens.dart';
import '../../../../helper/navigation_routes.dart';
import '../../../../routes/app_routes.dart';
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widget_normal_txt.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';

class HealthSurveyScreen extends StatefulWidget {
  const HealthSurveyScreen({super.key});

  @override
  State<HealthSurveyScreen> createState() => _HealthSurveyScreenState();
}

class _HealthSurveyScreenState extends State<HealthSurveyScreen> {
  List<SurveyQuestion> surveyQuestionsList = [
    SurveyQuestion(
      processName: "Underwriting",
      surveyQuestion:
          "၁။ လ ွန်ခဲ့သော (၃) လအတ ွင်း ဆရာဝန်ထံမှ စမ်းသပ်မှု ခံယူခြင်း၊ ဆေးစစ်ခြင်း၊ ကုသမှုခံယူခြင်း(ဆေးရုံတက်ခြင်း၊ခ ွဲစိတ်ကုသခြင်းအပါအဝင်) ဆေးသောက်ရန် ညွှန်ကြားခံခဲ့ရခြင်းများ ရှိခဲ့ပါသလား။",
      surveyQuestionId: "ISSUR004001000009553120052019",
      inputType: "BOOLEAN",
      resourceQuestionDTOs: [],
    ),
    SurveyQuestion(
      processName: "Underwriting",
      surveyQuestion:
          "၂ ။ လ ွန်ခဲ့သော (၅) နှစ်အတ ွင်းတ ွင် အောက်ပါဇယား၌ ဖော်ပြထားသည့်ရောဂါကြောင့် ဆရာဝန်ထံမှ စမ်းသပ်မှု ခံယူခြင်း၊ ဆေးစစ်ခြင်း၊ ကုသမှုခံယူခြင်း ( ဆေးရုံတက်ခြင်း၊ ခ ွဲစိတ်ကုသခြင်းအပါအဝင်) ဆေးသောက်ရန် ညွှန်ကြားခံခဲ့ရခြင်းများ ရှိခဲ့ပါသလား ။",
      surveyQuestionId: "ISSUR004001000009553220052019",
      inputType: "NONE",
      resourceQuestionDTOs: [],
    ),
    SurveyQuestion(
      processName: "Underwriting",
      surveyQuestion: "နှလုံး၊ သေ ွးပေါင်ချိန်",
      surveyQuestionId: "ISSUR004001000009553320052019",
      inputType: "NONE",
      resourceQuestionDTOs: [],
    ),
    SurveyQuestion(
      processName: "Underwriting",
      surveyQuestion: "(ဂ) လက်ရှိအခြေအနေ",
      surveyQuestionId: "ISSUR004001000009562420052019",
      inputType: "SELECT_MANY_CHECKBOX",
      resourceQuestionDTOs: [
        ResourceDTO(
          id: "ISSUR006001000009553120052019",
          name: "လုံးဝပျောက်ကင်းပြီး",
        ),
        ResourceDTO(
          id: "ISSUR006001000009553220052019",
          name: "စစ်ဆေးနေဆဲ",
        ),
        ResourceDTO(
          id: "ISSUR006001000009553320052019",
          name: "ကုသနေဆဲ",
        ),
        ResourceDTO(
          id: "ISSUR006001000009553420052019",
          name: "အခြေအနေစောင့်ကြည့်နေဆဲ",
        ),
        ResourceDTO(
          id: "ISSUR006001000009553520052019",
          name: "အခြား",
        ),
      ],
    ),
    SurveyQuestion(
      processName: "Underwriting",
      surveyQuestion: "၈။ လက်ရှိအချိန်အထိကင်ဆာရောဂါဖြစ်ခဲ့ဖူးပါသလား။",
      surveyQuestionId: "ISSUR004001000009554220052019",
      inputType: "BOOLEAN",
      resourceQuestionDTOs: [],
    ),
    SurveyQuestion(
      processName: "Underwriting",
      surveyQuestion: "(က) ဆေးလိပ်သောက်သည့် အ လေ့အကျင့်",
      surveyQuestionId: "ISSUR004001000009554620052019",
      inputType: "SELECT_ONE_RADIO",
      resourceQuestionDTOs: [
        ResourceDTO(
          id: "ISSUR006001000009555123052019",
          name: "နေ့စဉ်",
        ),
        ResourceDTO(
          id: "ISSUR006001000009555223052019",
          name: "တစ်ခါတစ်ရံ",
        ),
      ],
    ),
    SurveyQuestion(
      processName: "Underwriting",
      surveyQuestion: "(က) အစိတ်အပိုင်း",
      surveyQuestionId: "ISSUR004001000009560120052019",
      inputType: "TEXT",
      resourceQuestionDTOs: [],
    ),
    SurveyQuestion(
      processName: "Underwriting",
      surveyQuestion:
          "(ဂ) ရောဂါအခြေအနေဒီထက်ပိုဆိုးမလာတော့ဘဲတည်ငြိမ်သ ွားသည်အချိန်",
      surveyQuestionId: "ISSUR004001000009560120052019",
      inputType: "DATE",
      resourceQuestionDTOs: [],
    ),
  ];

  List<SurveyAnswer> surveyAnswerList = [];

  List<TextEditingController> controller = [];

  String answer = '';
  List<String> answerRadio = [];
  List<String> labelRadio = [];
  List<List<bool>> checkedList = [];

  handleTextChanged(String value,int index){
    setState(() {
      surveyAnswerList.add(SurveyAnswer(
        processName: surveyQuestionsList[index].processName,
        surveyQuestion: surveyQuestionsList[index].surveyQuestion,
        surveyQuestionId: surveyQuestionsList[index].surveyQuestionId,
        inputType: surveyQuestionsList[index].inputType,
          resourceAnswerDTOs: surveyQuestionsList[index].resourceQuestionDTOs,
        description: value,
        trueLabel: '',
        falseLabel: '',
        frontLabel: '',
        behindLabel: '',
          resourceQuestionList: []
      ));
    });
  }

  handleRadioChanged(String value,int index){
    setState(() {
      final existingAnswerIndex = surveyAnswerList.indexWhere((answer) =>
      answer.surveyQuestionId == surveyQuestionsList[index].surveyQuestionId);

      answerRadio[index] = value;

      if(existingAnswerIndex != -1){
        surveyAnswerList[existingAnswerIndex] = SurveyAnswer(
          processName: surveyQuestionsList[existingAnswerIndex].processName,
          surveyQuestion: surveyQuestionsList[existingAnswerIndex].surveyQuestion,
          surveyQuestionId: surveyQuestionsList[existingAnswerIndex].surveyQuestionId,
          inputType: surveyQuestionsList[existingAnswerIndex].inputType,
            resourceAnswerDTOs: surveyQuestionsList[existingAnswerIndex].resourceQuestionDTOs,
          description: '',
          trueLabel: value == 'Yes' ? 'Yes' : '',
          falseLabel: value == 'No' ? 'No': '',
          frontLabel: '',
          behindLabel: '',
          resourceQuestionList: []
        );
      }else{
        surveyAnswerList.add(SurveyAnswer(
          processName: surveyQuestionsList[index].processName,
          surveyQuestion: surveyQuestionsList[index].surveyQuestion,
          surveyQuestionId: surveyQuestionsList[index].surveyQuestionId,
          inputType: surveyQuestionsList[index].inputType,
            resourceAnswerDTOs: surveyQuestionsList[index].resourceQuestionDTOs,
          description: '',
          trueLabel: value == 'Yes' ? 'Yes' : '',
          falseLabel: value == 'No' ? 'No': '',
          frontLabel: '',
          behindLabel: '',
            resourceQuestionList: []
        ));
      }
    });
  }

  handleLabelChanged(String value, int index){
    setState(() {
      labelRadio[index] = value;

      surveyAnswerList.add(SurveyAnswer(
          processName: surveyQuestionsList[index].processName,
          surveyQuestion: surveyQuestionsList[index].surveyQuestion,
          surveyQuestionId: surveyQuestionsList[index].surveyQuestionId,
          inputType: surveyQuestionsList[index].inputType,
          resourceAnswerDTOs: surveyQuestionsList[index].resourceQuestionDTOs,
          description: '',
          trueLabel: '',
          falseLabel: '',
          frontLabel: value == surveyQuestionsList[index].resourceQuestionDTOs[0].name ? value : '',
          behindLabel: value == surveyQuestionsList[index].resourceQuestionDTOs[1].name ? value : '',
          resourceQuestionList: []
      ));
    });
  }

  handleCheckBoxChanged(bool value, int index, int checkboxIndex){
    setState(() {
      checkedList[index][checkboxIndex] = value;
      if(value){
        surveyAnswerList.add(SurveyAnswer(
            processName: surveyQuestionsList[index].processName,
            surveyQuestion: surveyQuestionsList[index].surveyQuestion,
            surveyQuestionId: surveyQuestionsList[index].surveyQuestionId,
            inputType: surveyQuestionsList[index].inputType,
            resourceAnswerDTOs: [surveyQuestionsList[index].resourceQuestionDTOs[checkboxIndex]],
            description: '',
            trueLabel: '',
            falseLabel: '',
            frontLabel: '',
            behindLabel: '',
            resourceQuestionList: [surveyQuestionsList[index].resourceQuestionDTOs[checkboxIndex]]
        )
        );
      }else{
        surveyAnswerList.removeWhere((answer) =>
        answer.resourceAnswerDTOs[checkboxIndex].id ==
            surveyQuestionsList[index].resourceQuestionDTOs[checkboxIndex].id);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = List.generate(surveyQuestionsList.length, (index) => TextEditingController());
    answerRadio = List.generate(surveyQuestionsList.length, (index) => 'No');
    labelRadio = List.generate(
        surveyQuestionsList.length,
            (index) => surveyQuestionsList[index].resourceQuestionDTOs.isNotEmpty
            ? surveyQuestionsList[index].resourceQuestionDTOs[1].name
            : '' );
    checkedList = List.generate(surveyQuestionsList.length, (index) => List.filled(surveyQuestionsList[index].resourceQuestionDTOs.length, false));

    for (int i = 0; i < surveyQuestionsList.length; i++) {
      if (surveyQuestionsList[i].inputType == 'BOOLEAN') {
        surveyAnswerList.add(SurveyAnswer(
          processName: surveyQuestionsList[i].processName,
          surveyQuestion: surveyQuestionsList[i].surveyQuestion,
          surveyQuestionId: surveyQuestionsList[i].surveyQuestionId,
          inputType: surveyQuestionsList[i].inputType,
            resourceAnswerDTOs: surveyQuestionsList[i].resourceQuestionDTOs,
          description: '',
          trueLabel: '',
          falseLabel: 'No',
          frontLabel: '',
          behindLabel: '',
            resourceQuestionList: []
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarWidget(
        titleIcon: Image.asset(
          AppImages.lifeHealthIcon,
          color: context.appColors.colorGold,
          width: iconMedium_3,
          height: iconMedium_3,
        ),
      ),
      body: Column(
        children: [
          if (surveyQuestionsList.isNotEmpty)
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: surveyQuestionsList.length + 1,
                  itemBuilder: (context, index) {
                    if(index == surveyQuestionsList.length){
                      return Padding(
                        padding: const EdgeInsets.only(right: kMarginMedium, top: kMarginMedium),
                        child: NextBtnWidget(
                          onNextPressed: () {
                            // print('List ${surveyAnswerList.length}');
                            // print('Survey Answers:');
                            // for (var answer in surveyAnswerList) {
                            //   print('Process Name: ${answer.processName}');
                            //   print('Survey Question: ${answer.surveyQuestion}');
                            //   print('Survey Question ID: ${answer.surveyQuestionId}');
                            //   print('Input Type: ${answer.inputType}');
                            //   print('Description: ${answer.description}');
                            //   print('True Label: ${answer.trueLabel}');
                            //   print('False Label: ${answer.falseLabel}');
                            //   print('Resource Question DTOs: ${answer.resourceAnswerDTOs}');
                            //   print('-------------------');
                            // }
                            CustomNavigationHelper.router.push(Routes.healthBeneficiaryHomePath.path);
                          },
                          txt: 'next_btn_txt'.tr(),
                          buyOnlineStyle: true,
                        ),
                      );
                    }else{
                      return Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(kMarginSmall_2),
                        margin: const EdgeInsets.symmetric(
                            horizontal: kMarginCardMedium,
                            vertical: kMarginCardMedium),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(229, 231, 233, 1),
                          borderRadius: BorderRadius.circular(boxRadius),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              surveyQuestionsList[index].surveyQuestion,
                              style: context.appFonts.bodySmall()?.copyWith(
                                  color: context.appColors.colorPrimary
                              ),
                            ),
                            const SizedBox(height: kMarginCardMedium,),
                            if(surveyQuestionsList[index].inputType == 'TEXT' || surveyQuestionsList[index].inputType == 'NONE' || surveyQuestionsList[index].inputType == 'DATE')
                              CustomTextFormFieldWidget(
                                onChanged: (value) => handleTextChanged(value, index),
                                hintTxt: '',
                                textController: controller[index],
                                textInputType: TextInputType.text,
                                buyOnlineStyle: true,
                              ),

                            if(surveyQuestionsList[index].inputType == 'BOOLEAN')
                              Row(
                                children: [
                                  Flexible(
                                    child: RadioListTile<String>(
                                      title: NormalTxtWidget(txt: 'No', fontColor: context.appColors.colorLabel,),
                                      value: 'No',
                                      groupValue: answerRadio[index],
                                      onChanged: (value) => handleRadioChanged(value!, index),
                                    ),
                                  ),
                                  Flexible(
                                    child: RadioListTile<String>(
                                      title: NormalTxtWidget(txt: 'Yes', fontColor: context.appColors.colorLabel,),
                                      value: 'Yes',
                                      groupValue: answerRadio[index],
                                      onChanged: (value) => handleRadioChanged(value!, index),
                                    ),
                                  ),
                                ],
                              ),

                            if(surveyQuestionsList[index].inputType == 'SELECT_ONE_RADIO')
                              Row(
                                children: [
                                  Flexible(
                                    child: RadioListTile<String>(
                                      title: NormalTxtWidget(txt: surveyQuestionsList[index].resourceQuestionDTOs[0].name, fontColor: context.appColors.colorLabel,),
                                      value: surveyQuestionsList[index].resourceQuestionDTOs[0].name,
                                      groupValue: labelRadio[index],
                                      onChanged: (value) => handleLabelChanged(value!, index),
                                    ),
                                  ),
                                  Flexible(
                                    child: RadioListTile<String>(
                                      title: NormalTxtWidget(txt: surveyQuestionsList[index].resourceQuestionDTOs[1].name, fontColor: context.appColors.colorLabel,),
                                      value: surveyQuestionsList[index].resourceQuestionDTOs[1].name,
                                      groupValue: labelRadio[index],
                                      onChanged: (value) => handleLabelChanged(value!, index),
                                    ),
                                  ),
                                ],
                              ),

                            if(surveyQuestionsList[index].inputType == 'SELECT_MANY_CHECKBOX')
                              ListView.builder(
                                shrinkWrap: true,
                                primary: false,
                                itemCount: surveyQuestionsList[index].resourceQuestionDTOs.length,
                                itemBuilder: (context, checkboxIndex) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Wrap(
                                              direction: Axis.horizontal,
                                              crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                              spacing: -5,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.zero,
                                                  child: Checkbox(
                                                    shape:
                                                    const RoundedRectangleBorder(
                                                        borderRadius: BorderRadius
                                                            .all(Radius.circular(
                                                            checkBoxRadius))),
                                                    value: checkedList[index][checkboxIndex],
                                                    onChanged: (bool? value) => handleCheckBoxChanged(value!, index , checkboxIndex),
                                                    // onChanged: (bool? value) {
                                                    //   setState(() {
                                                    //     checkedList[index][checkboxIndex] = value ?? false;
                                                    //   });
                                                    // },
                                                    checkColor: Colors.white,
                                                    activeColor: context
                                                        .appColors.colorPrimary,
                                                  ),
                                                ),
                                                if(surveyQuestionsList[index].resourceQuestionDTOs.isNotEmpty)
                                                  Text(surveyQuestionsList[index].resourceQuestionDTOs[checkboxIndex].name),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              )
                          ],
                        ),
                      );
                    }
                  }),
            ),
        ],
      ),
    );
  }
}
