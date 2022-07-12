import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:survey_app/config/custom_http.dart';
import 'package:survey_app/config/server_address.dart';
import 'package:survey_app/survey/data/survey_repository.dart';
import 'package:survey_app/survey/model/survey/survey_model.dart';
import 'package:survey_app/survey/model/survey_response/survey_response_model.dart';

class SurveyApiHandler extends SurveyRepository{
  @override
  Future<SurveyModel> fetchSurvey() async {
    try {
      final route = HttpClient().createUri(ServerAddresses.getSurvey);

      final response = await http.get(route);
      final jsonResponse = jsonDecode(response.body);
      final survey = SurveyModel.fromJson(jsonResponse as Map<String, dynamic>);

      return survey;
      
    } on SocketException {
      throw 'You have no internet, kindly check your data connection, or wifi';
    } on FormatException {
      throw 'Your request could not be processed, please try again.';
    } on HttpException {
      throw 'Your request couldnt be processed at the moment, please try later.';
    }
  }

  @override
  Future<void> addSurveyResponse(List<dynamic> surveyResponseModel) async {
    try {
      final route = HttpClient().createUri(ServerAddresses.addReponse);
      var data = <String, dynamic>{
        "responses": surveyResponseModel
      };
      final response = await http.post(route, body: data);
      Map jsonResponse = json.decode(response.body) as Map;
      if (jsonResponse['status'] != 200) {
        if (jsonResponse['status'] != 401) {
          throw "response add failed.";
        } else if (jsonResponse['status'] != 403) {
          throw "Access Denied";
        } else if (jsonResponse['status'] != 500) {
          throw "Could not connect to network at the moment. Check your internet connection";
        } else if (response.statusCode == 503 || response.statusCode == 401) {
          throw "Service is currently unavailable.";
        }
        throw 'An error occurred';
      }
      //return jsonResponse['token'];
    } on SocketException {
      throw 'You have no internet, kindly check your data connection, or wifi';
    } on FormatException {
      throw 'Your request could not be processed, please try again.';
    } on HttpException {
      throw 'Your request couldnt be processed at the moment, please try later.';
    }
  }

}