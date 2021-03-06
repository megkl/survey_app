import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:survey_app/survey/data/survey_repository.dart';
import 'package:survey_app/survey/model/survey_response/survey_response_model.dart';

import '../../model/survey/survey_model.dart';

part 'survey_cubit_state.dart';

class SurveyCubitCubit extends Cubit<SurveyCubitState> {
  final SurveyRepository? surveyRepository;
  SurveyCubitCubit(this.surveyRepository) : super(SurveyCubitInitial());
  
  Future<void> getSurvey() async {
    try {
      emit(SurveyLoading());
      final survey = await surveyRepository!.fetchSurvey();
      emit(FetchSurvey(survey));
    } catch (error) {
        emit(SurveyErrorState(error.toString()));
    }
  }

  Future<void> addSurveyResponse(List<dynamic> surveyResponse) async {
    try {
      emit(SurveyLoading());
      final survey = await surveyRepository!.addSurveyResponse(surveyResponse);
      emit((SurveyAddResponse(surveyReponses: surveyResponse)));
    } catch (error) {
        emit(SurveyErrorState(error.toString()));
    }
  }
}
