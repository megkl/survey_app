// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SurveyResponseModelAdapter extends TypeAdapter<SurveyResponseModel> {
  @override
  final int typeId = 2;

  @override
  SurveyResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SurveyResponseModel(
      responses: (fields[0] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, SurveyResponseModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.responses);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
