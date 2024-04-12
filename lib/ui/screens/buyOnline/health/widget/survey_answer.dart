import 'package:test_pj_mi/ui/screens/buyOnline/health/widget/resource_dto.dart';

class SurveyAnswer {
  final String processName;
  final String surveyQuestion;
  final String surveyQuestionId;
  final String inputType;
  final List<ResourceDTO> resourceAnswerDTOs;
  final String description;
  final String trueLabel;
  final String falseLabel;
  final String frontLabel;
  final String behindLabel;
  final List<ResourceDTO> resourceQuestionList;

  SurveyAnswer({
    required this.processName,
    required this.surveyQuestion,
    required this.surveyQuestionId,
    required this.inputType,
    required this.resourceAnswerDTOs,
    required this.description,
    required this.trueLabel,
    required this.falseLabel,
    required this.frontLabel,
    required this.behindLabel,
    required this.resourceQuestionList
});
}