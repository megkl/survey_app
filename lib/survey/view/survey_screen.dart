import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:survey_app/config/hive_boxes.dart';
import 'package:survey_app/survey/cubit/survey/survey_cubit_cubit.dart';

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  late final Box surveyBox;

  @override
  void initState() {
    super.initState();
    surveyBox = Hive.box(HiveBoxes.surveyBox);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: surveyBox.listenable(),
        builder: (context, Box box, widget) {
          final survey = box.get(HiveBoxes.surveyBox);
          return survey == null
              ? 
              BlocListener<SurveyCubitCubit, SurveyCubitState>(
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
                        surveyBox.put(0, state.survey);
                        return Container();
                      } else if (state is SurveyErrorState) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.errorMessage!),
                          ),
                        );
                      }
                      return Container();
                    },
                  ),
                )
              : Container();
        },
      ),
    );
  }
  
}
