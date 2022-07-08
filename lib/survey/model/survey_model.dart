// To parse this JSON data, do
//
//     final surveyModel = surveyModelFromJson(jsonString);
import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'survey_model.freezed.dart';
part 'survey_model.g.dart';

//SurveyModel surveyModelFromJson(String str) => SurveyModel.fromJson(json.decode(str));

String surveyModelToJson(SurveyModel data) => json.encode(data.toJson());

@freezed
abstract class SurveyModel with _$SurveyModel {
  @HiveType(typeId: 1)
  const factory SurveyModel({
    @HiveField(0) String? id,
    @HiveField(1) String? startQuestionId,
    @HiveField(2) List<Question>? questions,
    @HiveField(3) Strings? strings,
  }) = _SurveyModel;

  factory SurveyModel.fromJson(Map<String, dynamic> json) =>
      _$SurveyModelFromJson(json);
}

@freezed
abstract class Question with _$Question {
  const factory Question({
    String? id,
    String? questionType,
    String? answerType,
    String? questionText,
    List<Option>? options,
    String? next,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
abstract class Option with _$Option {
  const factory Option({
    String? value,
    String? displayText,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}

@freezed
abstract class Strings with _$Strings {
  const factory Strings({
    En? en,
  }) = _Strings;

  factory Strings.fromJson(Map<String, dynamic> json) =>
      _$StringsFromJson(json);
}

@freezed
abstract class En with _$En {
  const factory En({
    String? qFarmerName,
    String? qFarmerGender,
    String? optMale,
    String? optFemale,
    String? optOther,
    String? qSizeOfFarm,
  }) = _En;

  factory En.fromJson(Map<String, dynamic> json) => _$EnFromJson(json);
}
