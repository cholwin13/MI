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
import '../../../widgets/app_bar_widget.dart';
import '../../../widgets/widget_next_btn.dart';
import '../../../widgets/widget_normal_txt.dart';
import '../../../widgets/widgte_custom_text_form_field.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  List<SurveyQuestion> surveyQuestionsList = [

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
  ];

  List<SurveyAnswer> surveyAnswerList = [];
  List<List<bool>> checkedList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // checkedList = List.generate(surveyQuestionsList.length, (index) => false);
    checkedList = List.generate(surveyQuestionsList.length, (index) => List.filled(surveyQuestionsList[index].resourceQuestionDTOs.length, false));
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
                            print('List ${surveyAnswerList.length}');
                            print('Survey Answers:');
                            for (var answer in surveyAnswerList) {
                              print('Process Name: ${answer.processName}');
                              print('Survey Question: ${answer.surveyQuestion}');
                              print('Survey Question ID: ${answer.surveyQuestionId}');
                              print('Input Type: ${answer.inputType}');
                              print('Description: ${answer.description}');
                              print('True Label: ${answer.trueLabel}');
                              print('False Label: ${answer.falseLabel}');
                              print('Resource Question DTOs: ${answer.resourceAnswerDTOs}');
                              print('Resources List: ${answer.resourceQuestionList.length}');
                              print('-------------------');
                              for(var checkBoxAns in answer.resourceQuestionList){
                                print('Resources ID: ${checkBoxAns.id}');
                                print('Resources NAme: ${checkBoxAns.name}');
                              }
                            }
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
