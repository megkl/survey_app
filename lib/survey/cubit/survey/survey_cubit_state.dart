part of 'survey_cubit_cubit.dart';

@immutable
abstract class SurveyCubitState {}

class SurveyCubitInitial extends SurveyCubitState {}

class SurveyLoading extends SurveyCubitState {}

class FetchSurvey extends SurveyCubitState {
  SurveyModel? survey;

  FetchSurvey(this.survey);
}

class SurveyAddResponse extends SurveyCubitState {
  List<dynamic>? surveyReponses;

  SurveyAddResponse({this.surveyReponses});
}

class SurveyErrorState extends SurveyCubitState {
    String? errorMessage;

    SurveyErrorState(this.errorMessage);
}


