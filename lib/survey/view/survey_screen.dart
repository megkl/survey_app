import 'dart:convert';

import 'package:cron/cron.dart' as job;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:survey_app/config/hive_boxes.dart';
import 'package:survey_app/survey/cubit/survey/survey_cubit_cubit.dart';
import 'package:survey_app/survey/model/survey/survey_model.dart';
import 'package:survey_app/survey/model/survey_response/survey_response_model.dart';
import 'package:survey_kit/survey_kit.dart';

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  late final Box surveyBox;
  late final Box responseBox;
  List<dynamic> surveyResults = [];

  late SurveyCubitCubit surveyCubitCubit;
  job.Cron cron = job.Cron();
   job.ScheduledTask? scheduledTask;
  // cron.schedule(new Schedule.parse('*/1 * * * *'), () async {
  //   print('every 1 minute');
  // });

  @override
  void initState() {
    super.initState();
    surveyCubitCubit = BlocProvider.of<SurveyCubitCubit>(context);
    surveyCubitCubit.getSurvey();
    surveyBox = Hive.box(HiveBoxes.surveyBox);
    responseBox = Hive.box(HiveBoxes.responseBox);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: surveyBox.listenable(),
          builder: (context, Box box, widget) {
            final survey = box.get(HiveBoxes.surveyBox) as SurveyModel;
            return ValueListenableBuilder(
              valueListenable: responseBox.listenable(),
              builder: (context, Box box, widget) {
                final responses = box.get(HiveBoxes.responseBox) as List<dynamic>;
                return survey == null
                    ? BlocListener<SurveyCubitCubit, SurveyCubitState>(
                        listener: (context, state) {
                          if (state is SurveyErrorState) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(state.errorMessage!),
                              ),
                            );
                          }
                        },
                        child: BlocBuilder<SurveyCubitCubit, SurveyCubitState>(
                          builder: (context, state) {
                            if (state is SurveyLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            } else if (state is FetchSurvey) {
                              surveyBox.put(HiveBoxes.surveyBox, state.survey);

                              return Scaffold(
                                body: Container(
                                  color: Colors.white,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: FutureBuilder<Task>(
                                      future: getSurvey(state.survey),
                                      builder: (context, snapshot) {
                                        if (snapshot.hasData &&
                                            snapshot.data != null) {
                                          final task = snapshot.data!;
                                          return SurveyKit(
                                            onResult: (SurveyResult result) {
                                              surveyResults = [
                                                result.results[1].results[0]
                                                    .result,
                                                result.results[2].results[0]
                                                    .result.value,
                                                result.results[3].results[0]
                                                    .result
                                              ];
                                              responseBox.put(HiveBoxes.responseBox,[surveyResults]);
                                              scheduleTask(responses);
                                              print(result.finishReason);
                                              Navigator.pushNamed(context, '/');
                                            },
                                            task: task,
                                            showProgress: true,
                                            localizations: {
                                              'cancel': 'Cancel',
                                              'next': 'Next',
                                            },
                                            themeData:
                                                Theme.of(context).copyWith(
                                              colorScheme:
                                                  ColorScheme.fromSwatch(
                                                primarySwatch: Colors.cyan,
                                              ).copyWith(
                                                onPrimary: Colors.white,
                                              ),
                                              primaryColor: Colors.cyan,
                                              backgroundColor: Colors.white,
                                              appBarTheme: const AppBarTheme(
                                                color: Colors.black12,
                                                iconTheme: IconThemeData(
                                                  color: Colors.cyan,
                                                ),
                                                titleTextStyle: TextStyle(
                                                  color: Colors.cyan,
                                                ),
                                              ),
                                              iconTheme: const IconThemeData(
                                                color: Colors.cyan,
                                              ),
                                              textSelectionTheme:
                                                  TextSelectionThemeData(
                                                cursorColor: Colors.cyan,
                                                selectionColor: Colors.cyan,
                                                selectionHandleColor:
                                                    Colors.cyan,
                                              ),
                                              cupertinoOverrideTheme:
                                                  CupertinoThemeData(
                                                primaryColor: Colors.cyan,
                                              ),
                                              outlinedButtonTheme:
                                                  OutlinedButtonThemeData(
                                                style: ButtonStyle(
                                                  minimumSize:
                                                      MaterialStateProperty.all(
                                                    Size(150.0, 60.0),
                                                  ),
                                                  side: MaterialStateProperty
                                                      .resolveWith(
                                                    (Set<MaterialState> state) {
                                                      if (state.contains(
                                                          MaterialState
                                                              .disabled)) {
                                                        return BorderSide(
                                                          color: Colors.grey,
                                                        );
                                                      }
                                                      return BorderSide(
                                                        color: Colors.cyan,
                                                      );
                                                    },
                                                  ),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  textStyle:
                                                      MaterialStateProperty
                                                          .resolveWith(
                                                    (Set<MaterialState> state) {
                                                      if (state.contains(
                                                          MaterialState
                                                              .disabled)) {
                                                        return Theme.of(context)
                                                            .textTheme
                                                            .button
                                                            ?.copyWith(
                                                              color:
                                                                  Colors.grey,
                                                            );
                                                      }
                                                      return Theme.of(context)
                                                          .textTheme
                                                          .button
                                                          ?.copyWith(
                                                            color: Colors.cyan,
                                                          );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              textButtonTheme:
                                                  TextButtonThemeData(
                                                style: ButtonStyle(
                                                  textStyle:
                                                      MaterialStateProperty.all(
                                                    Theme.of(context)
                                                        .textTheme
                                                        .button
                                                        ?.copyWith(
                                                          color: Colors.cyan,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              textTheme: const TextTheme(
                                                headline2: TextStyle(
                                                  fontSize: 28.0,
                                                  color: Colors.black,
                                                ),
                                                headline5: TextStyle(
                                                  fontSize: 24.0,
                                                  color: Colors.black,
                                                ),
                                                bodyText2: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.black,
                                                ),
                                                subtitle1: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              inputDecorationTheme:
                                                  const InputDecorationTheme(
                                                labelStyle: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            surveyProgressbarConfiguration:
                                                SurveyProgressConfiguration(
                                              backgroundColor: Colors.white,
                                            ),
                                          );
                                        }
                                        return CircularProgressIndicator
                                            .adaptive();
                                      },
                                    ),
                                  ),
                                ),
                              );
                            } else if (state is SurveyErrorState) {
                              return SnackBar(
                                content: Text(state.errorMessage!),
                              );
                            }
                            return Container();
                          },
                        ),
                      )
                    : Scaffold(
                        body: Container(
                          color: Colors.white,
                          child: Align(
                            alignment: Alignment.center,
                            child: FutureBuilder<Task>(
                              future: getSurvey(survey),
                              builder: (context, snapshot) {
                                if (snapshot.hasData && snapshot.data != null) {
                                  final task = snapshot.data!;
                                  return SurveyKit(
                                    onResult: (SurveyResult result) {
                                      surveyResults = [
                                        result.results[1].results[0].result,
                                        result
                                            .results[2].results[0].result.value,
                                        result.results[3].results[0].result
                                      ];
                                      responseBox.put(HiveBoxes.responseBox,[surveyResults]);
                                      scheduleTask(responses);
                                      print(result.finishReason);
                                      Navigator.pushNamed(context, '/');
                                    },
                                    task: task,
                                    showProgress: true,
                                    localizations: {
                                      'cancel': 'Cancel',
                                      'next': 'Next',
                                    },
                                    themeData: Theme.of(context).copyWith(
                                      colorScheme: ColorScheme.fromSwatch(
                                        primarySwatch: Colors.cyan,
                                      ).copyWith(
                                        onPrimary: Colors.white,
                                      ),
                                      primaryColor: Colors.cyan,
                                      backgroundColor: Colors.white,
                                      appBarTheme: const AppBarTheme(
                                        color: Colors.black54,
                                        iconTheme: IconThemeData(
                                          color: Colors.cyan,
                                        ),
                                        titleTextStyle: TextStyle(
                                          color: Colors.cyan,
                                        ),
                                      ),
                                      iconTheme: const IconThemeData(
                                        color: Colors.cyan,
                                      ),
                                      textSelectionTheme:
                                          const TextSelectionThemeData(
                                        cursorColor: Colors.cyan,
                                        selectionColor: Colors.cyan,
                                        selectionHandleColor: Colors.cyan,
                                      ),
                                      cupertinoOverrideTheme:
                                          CupertinoThemeData(
                                        primaryColor: Colors.cyan,
                                      ),
                                      outlinedButtonTheme:
                                          OutlinedButtonThemeData(
                                        style: ButtonStyle(
                                          minimumSize:
                                              MaterialStateProperty.all(
                                            Size(150.0, 60.0),
                                          ),
                                          side:
                                              MaterialStateProperty.resolveWith(
                                            (Set<MaterialState> state) {
                                              if (state.contains(
                                                  MaterialState.disabled)) {
                                                return BorderSide(
                                                  color: Colors.grey,
                                                );
                                              }
                                              return BorderSide(
                                                color: Colors.cyan,
                                              );
                                            },
                                          ),
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          textStyle:
                                              MaterialStateProperty.resolveWith(
                                            (Set<MaterialState> state) {
                                              if (state.contains(
                                                  MaterialState.disabled)) {
                                                return Theme.of(context)
                                                    .textTheme
                                                    .button
                                                    ?.copyWith(
                                                      color: Colors.grey,
                                                    );
                                              }
                                              return Theme.of(context)
                                                  .textTheme
                                                  .button
                                                  ?.copyWith(
                                                    color: Colors.cyan,
                                                  );
                                            },
                                          ),
                                        ),
                                      ),
                                      textButtonTheme: TextButtonThemeData(
                                        style: ButtonStyle(
                                          textStyle: MaterialStateProperty.all(
                                            Theme.of(context)
                                                .textTheme
                                                .button
                                                ?.copyWith(
                                                  color: Colors.cyan,
                                                ),
                                          ),
                                        ),
                                      ),
                                      textTheme: const TextTheme(
                                        headline2: TextStyle(
                                          fontSize: 28.0,
                                          color: Colors.black,
                                        ),
                                        headline5: TextStyle(
                                          fontSize: 24.0,
                                          color: Colors.black,
                                        ),
                                        bodyText2: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black,
                                        ),
                                        subtitle1: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      inputDecorationTheme:
                                          const InputDecorationTheme(
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    surveyProgressbarConfiguration:
                                        SurveyProgressConfiguration(
                                      backgroundColor: Colors.white,
                                    ),
                                  );
                                }
                                return CircularProgressIndicator.adaptive();
                              },
                            ),
                          ),
                        ),
                      );
              },
            );
          }),
    );
  }

  Future<Task> getSurvey(SurveyModel? survey) {
    final task = NavigableTask(
      id: TaskIdentifier(),
      steps: [
        InstructionStep(
            title: 'Welcome to farmers survey',
            text: 'Get ready for a few questions!',
            buttonText: 'Let\'s go!',
            showAppBar: false),
        QuestionStep(
          title: survey!.strings!.en!.qFarmerName!,
          answerFormat: TextAnswerFormat(
              maxLines: 1,
              validationRegEx: "^(?!\s*\$).+",
              hint: survey.questions![0].id!),
        ),
        QuestionStep(
          title: survey.strings!.en!.qFarmerGender!,
          answerFormat: SingleChoiceAnswerFormat(textChoices: [
            TextChoice(
                text: survey.strings!.en!.optMale!,
                value: survey.strings!.en!.optMale!),
            TextChoice(
                text: survey.strings!.en!.optFemale!,
                value: survey.strings!.en!.optFemale!),
            TextChoice(
                text: survey.strings!.en!.optOther!,
                value: survey.strings!.en!.optOther!),
          ]),
        ),
        QuestionStep(
          title: survey.strings!.en!.qSizeOfFarm!,
          answerFormat: TextAnswerFormat(
              maxLines: 5,
              validationRegEx: "^(?!\s*\$).+",
              hint: survey.questions![2].id!),
        ),
        CompletionStep(
          stepIdentifier: StepIdentifier(),
          text: 'Thanks for taking the survey',
          title: 'Done!',
          buttonText: 'Submit survey',
        ),
      ],
    );
    task.addNavigationRule(
      forTriggerStepIdentifier: task.steps[3].stepIdentifier,
      navigationRule: ConditionalNavigationRule(
        resultToStepIdentifierMapper: (input) {
          switch (input) {
            case "Yes":
              return task.steps[0].stepIdentifier;
            case "No":
              return task.steps[4].stepIdentifier;
            default:
              return null;
          }
        },
      ),
    );
    return Future.value(task);
  }
  
  Future<void> scheduleTask(List<dynamic> surveyResponses) async {
    scheduledTask = cron.schedule(job.Schedule.parse('*/1 * * * *'), () async {
      return BlocProvider.of<SurveyCubitCubit>(context).addSurveyResponse(surveyResponses);
      //print("Survey Responses send");
    });
  }
}
