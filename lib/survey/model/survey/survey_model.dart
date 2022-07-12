// To parse this JSON data, do
//
//     final surveyModel = surveyModelFromJson(jsonString);
import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'survey_model.freezed.dart';
part 'survey_model.g.dart';

//SurveyModel surveyModelFromJson(String str) => SurveyModel.fromJson(json.decode(str)  as Map<String, Object?>);

//String surveyModelToJson(SurveyModel data) => json.encode(data.toJson());

@freezed
abstract class SurveyModel with _$SurveyModel {
  @HiveType(typeId: 1, adapterName: 'SurveyModelAdapter')
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
  @HiveType(typeId: 3)
  const factory Question({
    @HiveField(0)
    String? id,
    @HiveField(1)
    String? questionType,
    @HiveField(2)
    String? answerType,
    @HiveField(3)
    String? questionText,
    @HiveField(4)
    List<Option>? options,
    @HiveField(5)
    String? next,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
abstract class Option with _$Option {
  @HiveType(typeId: 5)
  const factory Option({
    @HiveField(0)
    String? value,
    @HiveField(1)
    String? displayText,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}

@freezed
abstract class Strings with _$Strings {
  @HiveType(typeId: 4)
  const factory Strings({
    @HiveField(0)
    En? en,
  }) = _Strings;

  factory Strings.fromJson(Map<String, dynamic> json) =>
      _$StringsFromJson(json);
}

@freezed
abstract class En with _$En {
  @HiveType(typeId: 6)
  const factory En({
    @HiveField(0)
    String? qFarmerName,
    @HiveField(1)
    String? qFarmerGender,
    @HiveField(2)
    String? optMale,
    @HiveField(3)
    String? optFemale,
    @HiveField(4)
    String? optOther,
    @HiveField(5)
    String? qSizeOfFarm,
  }) = _En;

  factory En.fromJson(Map<String, dynamic> json) => _$EnFromJson(json);
}
