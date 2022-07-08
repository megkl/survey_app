import 'package:hive/hive.dart';

part 'survey_response_model.g.dart';

@HiveType(typeId: 2)
class SurveyResponseModel{

  SurveyResponseModel({this.responses});

  @HiveField(0)
  List<String>? responses;

}
