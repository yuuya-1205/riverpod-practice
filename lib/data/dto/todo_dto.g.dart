// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoDtoImpl _$$TodoDtoImplFromJson(Map<String, dynamic> json) =>
    _$TodoDtoImpl(
      todoId: json['todoId'] as String,
      postName: json['postName'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$TodoDtoImplToJson(_$TodoDtoImpl instance) =>
    <String, dynamic>{
      'todoId': instance.todoId,
      'postName': instance.postName,
      'content': instance.content,
    };
