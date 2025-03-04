// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoDto _$TodoDtoFromJson(Map<String, dynamic> json) {
  return _TodoDto.fromJson(json);
}

/// @nodoc
mixin _$TodoDto {
  String get todoId => throw _privateConstructorUsedError;
  String get postName => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this TodoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoDtoCopyWith<TodoDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDtoCopyWith<$Res> {
  factory $TodoDtoCopyWith(TodoDto value, $Res Function(TodoDto) then) =
      _$TodoDtoCopyWithImpl<$Res, TodoDto>;
  @useResult
  $Res call({String todoId, String postName, String content});
}

/// @nodoc
class _$TodoDtoCopyWithImpl<$Res, $Val extends TodoDto>
    implements $TodoDtoCopyWith<$Res> {
  _$TodoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? postName = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      postName: null == postName
          ? _value.postName
          : postName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoDtoImplCopyWith<$Res> implements $TodoDtoCopyWith<$Res> {
  factory _$$TodoDtoImplCopyWith(
          _$TodoDtoImpl value, $Res Function(_$TodoDtoImpl) then) =
      __$$TodoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String todoId, String postName, String content});
}

/// @nodoc
class __$$TodoDtoImplCopyWithImpl<$Res>
    extends _$TodoDtoCopyWithImpl<$Res, _$TodoDtoImpl>
    implements _$$TodoDtoImplCopyWith<$Res> {
  __$$TodoDtoImplCopyWithImpl(
      _$TodoDtoImpl _value, $Res Function(_$TodoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? postName = null,
    Object? content = null,
  }) {
    return _then(_$TodoDtoImpl(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      postName: null == postName
          ? _value.postName
          : postName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoDtoImpl implements _TodoDto {
  _$TodoDtoImpl(
      {required this.todoId, required this.postName, required this.content});

  factory _$TodoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoDtoImplFromJson(json);

  @override
  final String todoId;
  @override
  final String postName;
  @override
  final String content;

  @override
  String toString() {
    return 'TodoDto(todoId: $todoId, postName: $postName, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDtoImpl &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.postName, postName) ||
                other.postName == postName) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, todoId, postName, content);

  /// Create a copy of TodoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoDtoImplCopyWith<_$TodoDtoImpl> get copyWith =>
      __$$TodoDtoImplCopyWithImpl<_$TodoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoDtoImplToJson(
      this,
    );
  }
}

abstract class _TodoDto implements TodoDto {
  factory _TodoDto(
      {required final String todoId,
      required final String postName,
      required final String content}) = _$TodoDtoImpl;

  factory _TodoDto.fromJson(Map<String, dynamic> json) = _$TodoDtoImpl.fromJson;

  @override
  String get todoId;
  @override
  String get postName;
  @override
  String get content;

  /// Create a copy of TodoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoDtoImplCopyWith<_$TodoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
