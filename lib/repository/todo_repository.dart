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

  Future<List<Todo>> fetchTodos() async {
    final firebase = _ref.read(firebaseFirestoreInstanceProvider);
    final snapshot = await firebase.collection("todo").get();
    final todoList =
        snapshot.docs.map((doc) => Todo.fromJson(doc.data())).toList();
    return todoList;
  }

  Future<Todo> fetchTodo(String documentId) async {
    final firebase = _ref.read(firebaseFirestoreInstanceProvider);
    final snapshot = await firebase.collection("todo").doc(documentId).get();
    final data = snapshot.data();
    final todo = Todo.fromJson(data!);
    return todo;
  }

  Future<List<String>> fetchDocumentId() async {
    final firebase = _ref.read(firebaseFirestoreInstanceProvider);
    final snapshots = firebase.collection("todo").get();
    final snap = await snapshots;
    final listId = snap.docs.map((doc) => doc.id).toList();
    return listId;
  }
}
