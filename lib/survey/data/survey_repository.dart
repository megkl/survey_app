
import 'package:survey_app/survey/model/survey_response/survey_response_model.dart';
import '../model/survey/survey_model.dart';

abstract class SurveyRepository {
 
  Future<void> addSurveyResponse(List<dynamic> surveyResponseModel);

  Future<SurveyModel> fetchSurvey();

}
