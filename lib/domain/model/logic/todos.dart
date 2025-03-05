// notifierを書く。

import 'package:flutter_riverpod_practice/data/repository/todo_dto_repository.dart';
import 'package:flutter_riverpod_practice/domain/model/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todos.g.dart';

@riverpod
class TodosNotifier extends _$TodosNotifier {
  @override
  Future<List<Todo>> build() async {
    final result = await ref.watch(todoDtoRepositoryProvider).fetchTodoList();
    final todoList = result.map(Todo.fromTodoDto).toList();
    return todoList;
  }
}
