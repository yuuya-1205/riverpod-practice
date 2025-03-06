import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/model/todo/todo.dart';
import 'package:flutter_riverpod_practice/repository/firebase/firebase_firestore_instance.dart';
import 'package:flutter_riverpod_practice/repository/todo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo.g.dart';

/// 関数で定義している＝notifierのbuildになる。
@riverpod
Future<List<Todo>> fetchTodoList(Ref ref) async {
  return ref.watch(todoRepositoryProvider).fetchTodos();
}

/// これは業務っぽくない。
/// これはテストができる作りではない。
///
// @riverpod
// Future<List<Todo>> fetchTodoList(Ref ref) async {
//   final firebase = ref.read(firebaseFirestoreInstanceProvider);
//   final snapshot = await firebase.collection("todo").get();
//   final todoList =
//       snapshot.docs.map((doc) => Todo.fromJson(doc.data())).toList();
//   return todoList;
// }
/// ここでは取得しかしていない。
/// 副作用のあることをしていない。
/// これを関数をProviderともいう。
