import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:survey_app/survey/cubit/survey/survey_cubit_cubit.dart';
import 'package:survey_app/survey/data/survey_repo_impl.dart';
import 'package:survey_app/survey/data/survey_repository.dart';

import 'survey/data/survey_api_handler.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio client
  injector..registerSingleton<Dio>(Dio())

  // Dependencies
  ..registerSingleton<SurveyApiHandler>(SurveyApiHandler())
  ..registerSingleton<SurveyRepository>(SurveyRepoImpl(injector()));

  //cubit
  injector.registerFactory<SurveyCubitCubit>(
      () => SurveyCubitCubit(injector()),);
}