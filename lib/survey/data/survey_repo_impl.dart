import 'package:survey_app/survey/data/survey_api_handler.dart';
import 'package:survey_app/survey/data/survey_repository.dart';
import 'package:survey_app/survey/model/survey_response/survey_response_model.dart';
import 'package:survey_app/survey/model/survey/survey_model.dart';

class SurveyRepoImpl extends SurveyRepository{
  final SurveyApiHandler? surveyApiHandler;

  SurveyRepoImpl(this.surveyApiHandler);

  @override
  Future<void> addSurveyResponse(SurveyResponseModel? surveyResponseModel) {
    return surveyApiHandler!.addSurveyResponse(surveyResponseModel);
  }

  @override
  Future<SurveyModel> fetchSurvey() {
    return surveyApiHandler!.fetchSurvey();
  }
  
}