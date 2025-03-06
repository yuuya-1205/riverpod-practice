import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/model/todo/todo.dart';
import 'package:flutter_riverpod_practice/repository/firebase/firebase_firestore_instance.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todo_repository.g.dart';

@riverpod
TodoRepository todoRepository(Ref ref) => TodoRepository(ref);

class TodoRepository {
  const TodoRepository(this._ref);
  final Ref _ref;

// Todoのリストを取得するロジック
  Future<List<Todo>> fetchTodos() async {
    final firebase = _ref.read(firebaseFirestoreInstanceProvider);
    final snapshot = await firebase.collection("todo").get();
    final todoList = snapshot.docs
        .map((doc) => Todo.fromJson({
              "todoId": doc.id,
              ...doc.data(),
            }))
        .toList();
    return todoList;
  }

// Todoを取得するロジック
  Future<Todo> fetchTodo(String documentId) async {
    final firebase = _ref.read(firebaseFirestoreInstanceProvider);
    final snapshot = await firebase.collection("todo").doc(documentId).get();
    final todo = Todo.fromJson({
      "todoId": snapshot.id,
      ...snapshot.data()!,
    });
    return todo;
  }

// Todoを追加するロジック
  Future<void> addTodo({
    required String postName,
    required String content,
  }) async {
    final firebase = _ref.read(firebaseFirestoreInstanceProvider);
    await firebase.collection("todo").add(
      {
        "postName": postName,
        "content": content,
      },
    );
  }
}
