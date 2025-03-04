import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_dto.freezed.dart';
part 'todo_dto.g.dart';

/// ここはfirebaseから取得したものだからFirebaseと同じ型にする。
@freezed
class TodoDto with _$TodoDto {
  factory TodoDto({
    required String todoId,
    required String postName,
    required String content,
  }) = _TodoDto;

  factory TodoDto.fromJson(Map<String, dynamic> json) =>
      _$TodoDtoFromJson(json);
}
