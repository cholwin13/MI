import 'package:test_pj_mi/ui/screens/buyOnline/health/widget/resource_dto.dart';

class SurveyQuestion {
  final String processName;
  final String surveyQuestion;
  final String surveyQuestionId;
  final String inputType;
  final List<ResourceDTO> resourceQuestionDTOs;

  SurveyQuestion({
    required this.processName,
    required this.surveyQuestion,
    required this.surveyQuestionId,
    required this.inputType,
    required this.resourceQuestionDTOs,
  });
}