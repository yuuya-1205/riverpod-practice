import 'package:flutter_riverpod_practice/model/todo/todo.dart';
import 'package:flutter_riverpod_practice/repository/todo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo.g.dart';

@riverpod
class TodoNotifier extends _$TodoNotifier {
  @override
  Future<Todo> build(String documentId) async {
    return ref.watch(todoRepositoryProvider).fetchTodo(documentId);
  }
}

///ここで単体のものを取得する。notifierクラスを定義しないといけないのかも。
///でないと分けている意味がない。
/// FirebaseからdocumentIdを取得してくる。
/// そのdocumentIdを引数に入れて表示する方がいいかな。