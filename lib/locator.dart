import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:survey_app/survey/data/survey_api_handler.dart';
import 'package:survey_app/survey/data/survey_repo_impl.dart';
import 'package:survey_app/survey/data/survey_repository.dart';

final sl = GetIt.instance;

//Service locator description
void init() {
  sl..registerLazySingleton<SurveyApiHandler>(
    () => SurveyApiHandler()
  )

  //Singleton for HTTP request
  ..registerLazySingleton(() => http.Client())

  ..registerLazySingleton<SurveyRepository>(
    () => surveyRepoImpl(surveyApiHandler: sl()),
  );

}
