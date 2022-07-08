import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:survey_app/app/app.dart';
import 'package:survey_app/bootstrap.dart';
import 'package:survey_app/config/hive_boxes.dart';
import 'package:survey_app/survey/model/survey_response/survey_response_model.dart';
import 'locator.dart' as service_locator;
import 'survey/model/survey/survey_model.dart';

Future<void> main() async {

   service_locator.init();

   WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive..registerAdapter(SurveyModelAdapter())
  ..registerAdapter(SurveyResponseModelAdapter());

  await Hive.openBox(HiveBoxes.surveyBox);
  await Hive.openBox(HiveBoxes.responseBox);
  
  await bootstrap(() => const App());
}
