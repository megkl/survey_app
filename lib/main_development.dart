import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:survey_app/app/app.dart';
import 'package:survey_app/bootstrap.dart';
import 'package:survey_app/config/hive_boxes.dart';
import 'package:survey_app/locator.dart';
import 'package:survey_app/survey/model/survey_response/survey_response_model.dart';
import 'locator.dart' as service_locator;
import 'survey/cubit/survey/survey_cubit_cubit.dart';
import 'survey/data/survey_repo_impl.dart';
import 'survey/model/survey/survey_model.dart';

Future<void> main() async {

   final injector = GetIt.instance;

   WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  
  await Hive.initFlutter();

  Hive..registerAdapter(SurveyModelAdapter())
  ..registerAdapter(SurveyResponseModelAdapter());

  await Hive.openBox(HiveBoxes.surveyBox);
  await Hive.openBox(HiveBoxes.responseBox);
  
   runApp(BlocProvider<SurveyCubitCubit>(
             create: (_) => injector(),
            child: App()));
}
