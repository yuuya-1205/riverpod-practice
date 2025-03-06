import 'package:flutter_riverpod_practice/model/todo/todo.dart';
import 'package:flutter_riverpod_practice/repository/firebase/firebase_firestore_instance.dart';
import 'package:flutter_riverpod_practice/repository/todo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todos.g.dart';

/// クラスのnotifierと言う。
/// 違い副作用メソッド　publicメソッド
///
@riverpod
class TodosNotifier extends _$TodosNotifier {
  @override

  ///自分自身の状態を決める＝build=初期化にほぼ近い。＝設計図。
  ///プライベート＝外から見れない。
  ///今回の管理対象はToDo一覧。
  Future<List<Todo>> build() async {
    return ref.watch(todoRepositoryProvider).fetchTodos();
  }

  /// publicメソッド（副作用のある）
  /// CUDは副作用。
  /// ここから実現したい
  /// 目的は状態を更新すること。
  Future<void> addTodo({
    required String postName,
    required String content,
  }) async {
    final firebase = ref.read(firebaseFirestoreInstanceProvider);
    final todo = Todo(
      postName: postName,
      content: content,
    );
    await firebase.collection("todo").add(
          /// Firerbaseに保存する際はjsonの形式にしたいからtoJsonをつける。
          todo.toJson(),
        );

    ref.invalidateSelf();
  }

  /// 管理したいのは何かを明確にする。
  /// ここは業務ロジック。notifier=業務ロジック/＝状態管理。
}

/// FlutterはUI
/// BuildContextとかないから。
/// ツリーの話が出てきてないからDart
