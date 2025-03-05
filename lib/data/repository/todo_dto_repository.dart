import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/data/dto/todo_dto.dart';
import 'package:flutter_riverpod_practice/repository/firebase/firebase_firestore_instance.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todo_dto_repository.g.dart';

@riverpod
TodoDtoRepository todoDtoRepository(Ref ref) => todoDtoRepository(ref);

class TodoDtoRepository {
  const TodoDtoRepository(this._ref);
  final Ref _ref;

  Future<List<TodoDto>> fetchTodoList() async {
    final firebase = _ref.read(firebaseFirestoreInstanceProvider);

    /// Map<String,dynamic>で取得する。（Jsonの形で取得）
    final snapshot = await firebase.collection("todo").get();

    final todoList = snapshot.docs

        /// Jsonで取得したものをTodoDtoに変換する。
        .map((doc) => TodoDto.fromJson({
              "todoId": doc.id,
              ...doc.data(),
            }))
        .toList();
    return todoList;
  }
}
