// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyModel _$SurveyModelFromJson(Map<String, dynamic> json) {
  return _SurveyModel.fromJson(json);
}

/// @nodoc
mixin _$SurveyModel {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get startQuestionId => throw _privateConstructorUsedError;
  @HiveField(2)
  List<Question>? get questions => throw _privateConstructorUsedError;
  @HiveField(3)
  Strings? get strings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyModelCopyWith<SurveyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyModelCopyWith<$Res> {
  factory $SurveyModelCopyWith(
          SurveyModel value, $Res Function(SurveyModel) then) =
      _$SurveyModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? startQuestionId,
      @HiveField(2) List<Question>? questions,
      @HiveField(3) Strings? strings});

  $StringsCopyWith<$Res>? get strings;
}

/// @nodoc
class _$SurveyModelCopyWithImpl<$Res> implements $SurveyModelCopyWith<$Res> {
  _$SurveyModelCopyWithImpl(this._value, this._then);

  final SurveyModel _value;
  // ignore: unused_field
  final $Res Function(SurveyModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startQuestionId = freezed,
    Object? questions = freezed,
    Object? strings = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startQuestionId: startQuestionId == freezed
          ? _value.startQuestionId
          : startQuestionId // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      strings: strings == freezed
          ? _value.strings
          : strings // ignore: cast_nullable_to_non_nullable
              as Strings?,
    ));
  }

  @override
  $StringsCopyWith<$Res>? get strings {
    if (_value.strings == null) {
      return null;
    }

    return $StringsCopyWith<$Res>(_value.strings!, (value) {
      return _then(_value.copyWith(strings: value));
    });
  }
}

/// @nodoc
abstract class _$$_SurveyModelCopyWith<$Res>
    implements $SurveyModelCopyWith<$Res> {
  factory _$$_SurveyModelCopyWith(
          _$_SurveyModel value, $Res Function(_$_SurveyModel) then) =
      __$$_SurveyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? startQuestionId,
      @HiveField(2) List<Question>? questions,
      @HiveField(3) Strings? strings});

  @override
  $StringsCopyWith<$Res>? get strings;
}

/// @nodoc
class __$$_SurveyModelCopyWithImpl<$Res> extends _$SurveyModelCopyWithImpl<$Res>
    implements _$$_SurveyModelCopyWith<$Res> {
  __$$_SurveyModelCopyWithImpl(
      _$_SurveyModel _value, $Res Function(_$_SurveyModel) _then)
      : super(_value, (v) => _then(v as _$_SurveyModel));

  @override
  _$_SurveyModel get _value => super._value as _$_SurveyModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? startQuestionId = freezed,
    Object? questions = freezed,
    Object? strings = freezed,
  }) {
    return _then(_$_SurveyModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      startQuestionId: startQuestionId == freezed
          ? _value.startQuestionId
          : startQuestionId // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: questions == freezed
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      strings: strings == freezed
          ? _value.strings
          : strings // ignore: cast_nullable_to_non_nullable
              as Strings?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'SurveyModelAdapter')
class _$_SurveyModel implements _SurveyModel {
  const _$_SurveyModel(
      {@HiveField(0) this.id,
      @HiveField(1) this.startQuestionId,
      @HiveField(2) final List<Question>? questions,
      @HiveField(3) this.strings})
      : _questions = questions;

  factory _$_SurveyModel.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyModelFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? startQuestionId;
  final List<Question>? _questions;
  @override
  @HiveField(2)
  List<Question>? get questions {
    final value = _questions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(3)
  final Strings? strings;

  @override
  String toString() {
    return 'SurveyModel(id: $id, startQuestionId: $startQuestionId, questions: $questions, strings: $strings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.startQuestionId, startQuestionId) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality().equals(other.strings, strings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startQuestionId),
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(strings));

  @JsonKey(ignore: true)
  @override
  _$$_SurveyModelCopyWith<_$_SurveyModel> get copyWith =>
      __$$_SurveyModelCopyWithImpl<_$_SurveyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyModelToJson(this);
  }
}

abstract class _SurveyModel implements SurveyModel {
  const factory _SurveyModel(
      {@HiveField(0) final String? id,
      @HiveField(1) final String? startQuestionId,
      @HiveField(2) final List<Question>? questions,
      @HiveField(3) final Strings? strings}) = _$_SurveyModel;

  factory _SurveyModel.fromJson(Map<String, dynamic> json) =
      _$_SurveyModel.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get startQuestionId;
  @override
  @HiveField(2)
  List<Question>? get questions;
  @override
  @HiveField(3)
  Strings? get strings;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyModelCopyWith<_$_SurveyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get questionType => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get answerType => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get questionText => throw _privateConstructorUsedError;
  @HiveField(4)
  List<Option>? get options => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? questionType,
      @HiveField(2) String? answerType,
      @HiveField(3) String? questionText,
      @HiveField(4) List<Option>? options,
      @HiveField(5) String? next});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? questionType = freezed,
    Object? answerType = freezed,
    Object? questionText = freezed,
    Object? options = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: questionType == freezed
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      answerType: answerType == freezed
          ? _value.answerType
          : answerType // ignore: cast_nullable_to_non_nullable
              as String?,
      questionText: questionText == freezed
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? questionType,
      @HiveField(2) String? answerType,
      @HiveField(3) String? questionText,
      @HiveField(4) List<Option>? options,
      @HiveField(5) String? next});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, (v) => _then(v as _$_Question));

  @override
  _$_Question get _value => super._value as _$_Question;

  @override
  $Res call({
    Object? id = freezed,
    Object? questionType = freezed,
    Object? answerType = freezed,
    Object? questionText = freezed,
    Object? options = freezed,
    Object? next = freezed,
  }) {
    return _then(_$_Question(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      questionType: questionType == freezed
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String?,
      answerType: answerType == freezed
          ? _value.answerType
          : answerType // ignore: cast_nullable_to_non_nullable
              as String?,
      questionText: questionText == freezed
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      options: options == freezed
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Option>?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3)
class _$_Question implements _Question {
  const _$_Question(
      {@HiveField(0) this.id,
      @HiveField(1) this.questionType,
      @HiveField(2) this.answerType,
      @HiveField(3) this.questionText,
      @HiveField(4) final List<Option>? options,
      @HiveField(5) this.next})
      : _options = options;

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? questionType;
  @override
  @HiveField(2)
  final String? answerType;
  @override
  @HiveField(3)
  final String? questionText;
  final List<Option>? _options;
  @override
  @HiveField(4)
  List<Option>? get options {
    final value = _options;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(5)
  final String? next;

  @override
  String toString() {
    return 'Question(id: $id, questionType: $questionType, answerType: $answerType, questionText: $questionText, options: $options, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.questionType, questionType) &&
            const DeepCollectionEquality()
                .equals(other.answerType, answerType) &&
            const DeepCollectionEquality()
                .equals(other.questionText, questionText) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality().equals(other.next, next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(questionType),
      const DeepCollectionEquality().hash(answerType),
      const DeepCollectionEquality().hash(questionText),
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(next));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(this);
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {@HiveField(0) final String? id,
      @HiveField(1) final String? questionType,
      @HiveField(2) final String? answerType,
      @HiveField(3) final String? questionText,
      @HiveField(4) final List<Option>? options,
      @HiveField(5) final String? next}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get questionType;
  @override
  @HiveField(2)
  String? get answerType;
  @override
  @HiveField(3)
  String? get questionText;
  @override
  @HiveField(4)
  List<Option>? get options;
  @override
  @HiveField(5)
  String? get next;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

Option _$OptionFromJson(Map<String, dynamic> json) {
  return _Option.fromJson(json);
}

/// @nodoc
mixin _$Option {
  @HiveField(0)
  String? get value => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get displayText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionCopyWith<Option> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionCopyWith<$Res> {
  factory $OptionCopyWith(Option value, $Res Function(Option) then) =
      _$OptionCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String? value, @HiveField(1) String? displayText});
}

/// @nodoc
class _$OptionCopyWithImpl<$Res> implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._value, this._then);

  final Option _value;
  // ignore: unused_field
  final $Res Function(Option) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? displayText = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      displayText: displayText == freezed
          ? _value.displayText
          : displayText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_OptionCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$$_OptionCopyWith(_$_Option value, $Res Function(_$_Option) then) =
      __$$_OptionCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String? value, @HiveField(1) String? displayText});
}

/// @nodoc
class __$$_OptionCopyWithImpl<$Res> extends _$OptionCopyWithImpl<$Res>
    implements _$$_OptionCopyWith<$Res> {
  __$$_OptionCopyWithImpl(_$_Option _value, $Res Function(_$_Option) _then)
      : super(_value, (v) => _then(v as _$_Option));

  @override
  _$_Option get _value => super._value as _$_Option;

  @override
  $Res call({
    Object? value = freezed,
    Object? displayText = freezed,
  }) {
    return _then(_$_Option(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      displayText: displayText == freezed
          ? _value.displayText
          : displayText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 5)
class _$_Option implements _Option {
  const _$_Option({@HiveField(0) this.value, @HiveField(1) this.displayText});

  factory _$_Option.fromJson(Map<String, dynamic> json) =>
      _$$_OptionFromJson(json);

  @override
  @HiveField(0)
  final String? value;
  @override
  @HiveField(1)
  final String? displayText;

  @override
  String toString() {
    return 'Option(value: $value, displayText: $displayText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Option &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.displayText, displayText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(displayText));

  @JsonKey(ignore: true)
  @override
  _$$_OptionCopyWith<_$_Option> get copyWith =>
      __$$_OptionCopyWithImpl<_$_Option>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OptionToJson(this);
  }
}

abstract class _Option implements Option {
  const factory _Option(
      {@HiveField(0) final String? value,
      @HiveField(1) final String? displayText}) = _$_Option;

  factory _Option.fromJson(Map<String, dynamic> json) = _$_Option.fromJson;

  @override
  @HiveField(0)
  String? get value;
  @override
  @HiveField(1)
  String? get displayText;
  @override
  @JsonKey(ignore: true)
  _$$_OptionCopyWith<_$_Option> get copyWith =>
      throw _privateConstructorUsedError;
}

Strings _$StringsFromJson(Map<String, dynamic> json) {
  return _Strings.fromJson(json);
}

/// @nodoc
mixin _$Strings {
  @HiveField(0)
  En? get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StringsCopyWith<Strings> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringsCopyWith<$Res> {
  factory $StringsCopyWith(Strings value, $Res Function(Strings) then) =
      _$StringsCopyWithImpl<$Res>;
  $Res call({@HiveField(0) En? en});

  $EnCopyWith<$Res>? get en;
}

/// @nodoc
class _$StringsCopyWithImpl<$Res> implements $StringsCopyWith<$Res> {
  _$StringsCopyWithImpl(this._value, this._then);

  final Strings _value;
  // ignore: unused_field
  final $Res Function(Strings) _then;

  @override
  $Res call({
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as En?,
    ));
  }

  @override
  $EnCopyWith<$Res>? get en {
    if (_value.en == null) {
      return null;
    }

    return $EnCopyWith<$Res>(_value.en!, (value) {
      return _then(_value.copyWith(en: value));
    });
  }
}

/// @nodoc
abstract class _$$_StringsCopyWith<$Res> implements $StringsCopyWith<$Res> {
  factory _$$_StringsCopyWith(
          _$_Strings value, $Res Function(_$_Strings) then) =
      __$$_StringsCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) En? en});

  @override
  $EnCopyWith<$Res>? get en;
}

/// @nodoc
class __$$_StringsCopyWithImpl<$Res> extends _$StringsCopyWithImpl<$Res>
    implements _$$_StringsCopyWith<$Res> {
  __$$_StringsCopyWithImpl(_$_Strings _value, $Res Function(_$_Strings) _then)
      : super(_value, (v) => _then(v as _$_Strings));

  @override
  _$_Strings get _value => super._value as _$_Strings;

  @override
  $Res call({
    Object? en = freezed,
  }) {
    return _then(_$_Strings(
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as En?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 4)
class _$_Strings implements _Strings {
  const _$_Strings({@HiveField(0) this.en});

  factory _$_Strings.fromJson(Map<String, dynamic> json) =>
      _$$_StringsFromJson(json);

  @override
  @HiveField(0)
  final En? en;

  @override
  String toString() {
    return 'Strings(en: $en)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Strings &&
            const DeepCollectionEquality().equals(other.en, en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(en));

  @JsonKey(ignore: true)
  @override
  _$$_StringsCopyWith<_$_Strings> get copyWith =>
      __$$_StringsCopyWithImpl<_$_Strings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StringsToJson(this);
  }
}

abstract class _Strings implements Strings {
  const factory _Strings({@HiveField(0) final En? en}) = _$_Strings;

  factory _Strings.fromJson(Map<String, dynamic> json) = _$_Strings.fromJson;

  @override
  @HiveField(0)
  En? get en;
  @override
  @JsonKey(ignore: true)
  _$$_StringsCopyWith<_$_Strings> get copyWith =>
      throw _privateConstructorUsedError;
}

En _$EnFromJson(Map<String, dynamic> json) {
  return _En.fromJson(json);
}

/// @nodoc
mixin _$En {
  @HiveField(0)
  String? get qFarmerName => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get qFarmerGender => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get optMale => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get optFemale => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get optOther => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get qSizeOfFarm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnCopyWith<En> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnCopyWith<$Res> {
  factory $EnCopyWith(En value, $Res Function(En) then) =
      _$EnCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? qFarmerName,
      @HiveField(1) String? qFarmerGender,
      @HiveField(2) String? optMale,
      @HiveField(3) String? optFemale,
      @HiveField(4) String? optOther,
      @HiveField(5) String? qSizeOfFarm});
}

/// @nodoc
class _$EnCopyWithImpl<$Res> implements $EnCopyWith<$Res> {
  _$EnCopyWithImpl(this._value, this._then);

  final En _value;
  // ignore: unused_field
  final $Res Function(En) _then;

  @override
  $Res call({
    Object? qFarmerName = freezed,
    Object? qFarmerGender = freezed,
    Object? optMale = freezed,
    Object? optFemale = freezed,
    Object? optOther = freezed,
    Object? qSizeOfFarm = freezed,
  }) {
    return _then(_value.copyWith(
      qFarmerName: qFarmerName == freezed
          ? _value.qFarmerName
          : qFarmerName // ignore: cast_nullable_to_non_nullable
              as String?,
      qFarmerGender: qFarmerGender == freezed
          ? _value.qFarmerGender
          : qFarmerGender // ignore: cast_nullable_to_non_nullable
              as String?,
      optMale: optMale == freezed
          ? _value.optMale
          : optMale // ignore: cast_nullable_to_non_nullable
              as String?,
      optFemale: optFemale == freezed
          ? _value.optFemale
          : optFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      optOther: optOther == freezed
          ? _value.optOther
          : optOther // ignore: cast_nullable_to_non_nullable
              as String?,
      qSizeOfFarm: qSizeOfFarm == freezed
          ? _value.qSizeOfFarm
          : qSizeOfFarm // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_EnCopyWith<$Res> implements $EnCopyWith<$Res> {
  factory _$$_EnCopyWith(_$_En value, $Res Function(_$_En) then) =
      __$$_EnCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? qFarmerName,
      @HiveField(1) String? qFarmerGender,
      @HiveField(2) String? optMale,
      @HiveField(3) String? optFemale,
      @HiveField(4) String? optOther,
      @HiveField(5) String? qSizeOfFarm});
}

/// @nodoc
class __$$_EnCopyWithImpl<$Res> extends _$EnCopyWithImpl<$Res>
    implements _$$_EnCopyWith<$Res> {
  __$$_EnCopyWithImpl(_$_En _value, $Res Function(_$_En) _then)
      : super(_value, (v) => _then(v as _$_En));

  @override
  _$_En get _value => super._value as _$_En;

  @override
  $Res call({
    Object? qFarmerName = freezed,
    Object? qFarmerGender = freezed,
    Object? optMale = freezed,
    Object? optFemale = freezed,
    Object? optOther = freezed,
    Object? qSizeOfFarm = freezed,
  }) {
    return _then(_$_En(
      qFarmerName: qFarmerName == freezed
          ? _value.qFarmerName
          : qFarmerName // ignore: cast_nullable_to_non_nullable
              as String?,
      qFarmerGender: qFarmerGender == freezed
          ? _value.qFarmerGender
          : qFarmerGender // ignore: cast_nullable_to_non_nullable
              as String?,
      optMale: optMale == freezed
          ? _value.optMale
          : optMale // ignore: cast_nullable_to_non_nullable
              as String?,
      optFemale: optFemale == freezed
          ? _value.optFemale
          : optFemale // ignore: cast_nullable_to_non_nullable
              as String?,
      optOther: optOther == freezed
          ? _value.optOther
          : optOther // ignore: cast_nullable_to_non_nullable
              as String?,
      qSizeOfFarm: qSizeOfFarm == freezed
          ? _value.qSizeOfFarm
          : qSizeOfFarm // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 6)
class _$_En implements _En {
  const _$_En(
      {@HiveField(0) this.qFarmerName,
      @HiveField(1) this.qFarmerGender,
      @HiveField(2) this.optMale,
      @HiveField(3) this.optFemale,
      @HiveField(4) this.optOther,
      @HiveField(5) this.qSizeOfFarm});

  factory _$_En.fromJson(Map<String, dynamic> json) => _$$_EnFromJson(json);

  @override
  @HiveField(0)
  final String? qFarmerName;
  @override
  @HiveField(1)
  final String? qFarmerGender;
  @override
  @HiveField(2)
  final String? optMale;
  @override
  @HiveField(3)
  final String? optFemale;
  @override
  @HiveField(4)
  final String? optOther;
  @override
  @HiveField(5)
  final String? qSizeOfFarm;

  @override
  String toString() {
    return 'En(qFarmerName: $qFarmerName, qFarmerGender: $qFarmerGender, optMale: $optMale, optFemale: $optFemale, optOther: $optOther, qSizeOfFarm: $qSizeOfFarm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_En &&
            const DeepCollectionEquality()
                .equals(other.qFarmerName, qFarmerName) &&
            const DeepCollectionEquality()
                .equals(other.qFarmerGender, qFarmerGender) &&
            const DeepCollectionEquality().equals(other.optMale, optMale) &&
            const DeepCollectionEquality().equals(other.optFemale, optFemale) &&
            const DeepCollectionEquality().equals(other.optOther, optOther) &&
            const DeepCollectionEquality()
                .equals(other.qSizeOfFarm, qSizeOfFarm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(qFarmerName),
      const DeepCollectionEquality().hash(qFarmerGender),
      const DeepCollectionEquality().hash(optMale),
      const DeepCollectionEquality().hash(optFemale),
      const DeepCollectionEquality().hash(optOther),
      const DeepCollectionEquality().hash(qSizeOfFarm));

  @JsonKey(ignore: true)
  @override
  _$$_EnCopyWith<_$_En> get copyWith =>
      __$$_EnCopyWithImpl<_$_En>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EnToJson(this);
  }
}

abstract class _En implements En {
  const factory _En(
      {@HiveField(0) final String? qFarmerName,
      @HiveField(1) final String? qFarmerGender,
      @HiveField(2) final String? optMale,
      @HiveField(3) final String? optFemale,
      @HiveField(4) final String? optOther,
      @HiveField(5) final String? qSizeOfFarm}) = _$_En;

  factory _En.fromJson(Map<String, dynamic> json) = _$_En.fromJson;

  @override
  @HiveField(0)
  String? get qFarmerName;
  @override
  @HiveField(1)
  String? get qFarmerGender;
  @override
  @HiveField(2)
  String? get optMale;
  @override
  @HiveField(3)
  String? get optFemale;
  @override
  @HiveField(4)
  String? get optOther;
  @override
  @HiveField(5)
  String? get qSizeOfFarm;
  @override
  @JsonKey(ignore: true)
  _$$_EnCopyWith<_$_En> get copyWith => throw _privateConstructorUsedError;
}
