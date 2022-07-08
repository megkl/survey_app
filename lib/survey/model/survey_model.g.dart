// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SurveyModelAdapter extends TypeAdapter<_$_SurveyModel> {
  @override
  final int typeId = 1;

  @override
  _$_SurveyModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_SurveyModel(
      id: fields[0] as String?,
      startQuestionId: fields[1] as String?,
      questions: (fields[2] as List?)?.cast<Question>(),
      strings: fields[3] as Strings?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_SurveyModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.startQuestionId)
      ..writeByte(3)
      ..write(obj.strings)
      ..writeByte(2)
      ..write(obj.questions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyModel _$$_SurveyModelFromJson(Map<String, dynamic> json) =>
    _$_SurveyModel(
      id: json['id'] as String?,
      startQuestionId: json['startQuestionId'] as String?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      strings: json['strings'] == null
          ? null
          : Strings.fromJson(json['strings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SurveyModelToJson(_$_SurveyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startQuestionId': instance.startQuestionId,
      'questions': instance.questions,
      'strings': instance.strings,
    };

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String?,
      questionType: json['questionType'] as String?,
      answerType: json['answerType'] as String?,
      questionText: json['questionText'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questionType': instance.questionType,
      'answerType': instance.answerType,
      'questionText': instance.questionText,
      'options': instance.options,
      'next': instance.next,
    };

_$_Option _$$_OptionFromJson(Map<String, dynamic> json) => _$_Option(
      value: json['value'] as String?,
      displayText: json['displayText'] as String?,
    );

Map<String, dynamic> _$$_OptionToJson(_$_Option instance) => <String, dynamic>{
      'value': instance.value,
      'displayText': instance.displayText,
    };

_$_Strings _$$_StringsFromJson(Map<String, dynamic> json) => _$_Strings(
      en: json['en'] == null
          ? null
          : En.fromJson(json['en'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StringsToJson(_$_Strings instance) =>
    <String, dynamic>{
      'en': instance.en,
    };

_$_En _$$_EnFromJson(Map<String, dynamic> json) => _$_En(
      qFarmerName: json['qFarmerName'] as String?,
      qFarmerGender: json['qFarmerGender'] as String?,
      optMale: json['optMale'] as String?,
      optFemale: json['optFemale'] as String?,
      optOther: json['optOther'] as String?,
      qSizeOfFarm: json['qSizeOfFarm'] as String?,
    );

Map<String, dynamic> _$$_EnToJson(_$_En instance) => <String, dynamic>{
      'qFarmerName': instance.qFarmerName,
      'qFarmerGender': instance.qFarmerGender,
      'optMale': instance.optMale,
      'optFemale': instance.optFemale,
      'optOther': instance.optOther,
      'qSizeOfFarm': instance.qSizeOfFarm,
    };
