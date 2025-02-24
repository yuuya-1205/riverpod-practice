import 'package:flutter_riverpod_practice/model/todo/todo.dart';
import 'package:flutter_riverpod_practice/repository/todo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todos.g.dart';

@riverpod
class TodosNotifier extends _$TodosNotifier {
  @override
  Future<List<Todo>> build() async {
    return ref.watch(todoRepositoryProvider).fetchTodos();
  }

//　todosに投稿を1つ増やす副作用
  Future<void> addTodo({
    required String postName,
    required String content,
  }) async {
    await ref
        .watch(todoRepositoryProvider)
        .addTodo(postName: postName, content: content);

    ref.invalidateSelf();
  }
}
/// FlutterはUI
/// BuildContextとかないから。
/// ツリーの話が出てきてないからDart


/// クラスのnotifierと言う。
/// 違い副作用メソッド　publicメソッド
/// 
/// 
/// 管理したいのは何かを明確にする。
/// ここは業務ロジック。notifier=業務ロジック/＝状態管理。
///自分自身の状態を決める＝build=初期化にほぼ近い。＝設計図。
///プライベート＝外から見れない。
///今回の管理対象はToDo一覧。

/// publicメソッド（副作用のある）
/// CUDは副作用。
/// ここから実現したい
/// 目的は状態を更新すること。