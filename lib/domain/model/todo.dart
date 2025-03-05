import 'package:flutter_riverpod_practice/data/dto/todo_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  factory Todo({
    required String todoId,
    required String postName,
    required String content,
  }) = _Todo;

  /// ここをDTOの形式にする理由がわからん。
  /// 回答：TodoDtoから受け取ってTodoインスタンスに変換するから。
  /// Jsonからは受け取らないよね。
  factory Todo.fromTodoDto(TodoDto todoDto) => Todo(
        todoId: todoDto.todoId,
        postName: todoDto.postName,
        content: todoDto.postName,
      );
}
