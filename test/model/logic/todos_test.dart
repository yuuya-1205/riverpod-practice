import 'package:flutter_riverpod_practice/model/logic/todos.dart';
import 'package:flutter_riverpod_practice/model/todo/todo.dart';
import 'package:flutter_riverpod_practice/repository/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../util/create_container.dart';
import '../../util/mocks.mocks.dart';

/// なんのテストを書くのか明確にする。。
/// どんなクラスやメソッドのテストを書くのか？
/// そのどんな挙動をテストするか？
/// if文の数だけ
/// 前提は何か、期待値は何か明確にする。
/// テスト対象が何に依存しているか何をどのようにmockするか？
/// テストは愚直に同じことを書いていい。
/// テストを読み解くのが難しいってことがないようにする。

/// TodoNotifierのbuildのテストをする。
/// 前提はなし。
/// 期待値は取得した　Todo一覧が取得できること。
/// 最初はLoading　取得後にデータが得られる。
/// Repositoryのメソッドに依存。RiverpodのDIとmockitoを用いる。
///
///

/// 複数のテストをグルーピングする機能
void main() {
  late MockTodoRepository mockTodoRepository;

  /// それぞれのテストが走る時に　置き換わるんだっけ？
  setUp(() {
    mockTodoRepository = MockTodoRepository();
  });
  // setUpAllについて調べる。
  group(
    "TodosNotifierのテスト",
    () {
      /// 前提：なし
      /// 期待値：Todo一覧が取得できること。
      test("buildのテスト", () async {
        // スタブ
        when(mockTodoRepository.fetchTodos()).thenAnswer(
          /// これがどんな挙動をしたいか決める。
          /// リハーサルのイメージ
          (_) async => [
            Todo(
              todoId: "1",
              postName: "こん",
              content: "おは",
            ),
            Todo(
              todoId: "2",
              postName: "こん",
              content: "おは",
            ),
          ],
        );
        // dartの世界のrefみたいなもの　DI
        final container = createContainer(overrides: [
          todoRepositoryProvider.overrideWith((_) => mockTodoRepository)
        ]);
        //はじめはローディング中である。
        expect(container.read(todosNotifierProvider),
            isA<AsyncLoading<List<Todo>>>());

        // todo一覧の取得を完了する。
        final todos = await container.read(todosNotifierProvider.future);

        // 取得されたTodo一覧が期待通りであることを検証する。
        expect(todos, [
          Todo(
            todoId: "1",
            postName: "こん",
            content: "おは",
          ),
          Todo(
            todoId: "2",
            postName: "こん",
            content: "おは",
          ),
        ]);
      });
    },
  );

  /// 前提：Todo一覧が取得できていること。
  /// 期待値：Todo一覧に任意に作成したTodoが１つ追加されていること。。
  test("addTodoのテスト", () async {
    // スタブ
    when(mockTodoRepository.fetchTodos()).thenAnswer(
      /// これがどんな挙動をしたいか決める。
      /// リハーサルのイメージ
      (_) async => [
        Todo(
          todoId: "1",
          postName: "こん",
          content: "おは",
        ),
        Todo(
          todoId: "2",
          postName: "こん",
          content: "おは",
        ),
      ],
    );
    // dartの世界のrefみたいなもの　DI
    final container = createContainer(overrides: [
      todoRepositoryProvider.overrideWith((_) => mockTodoRepository)
    ]);
    //はじめはローディング中である。
    expect(
        container.read(todosNotifierProvider), isA<AsyncLoading<List<Todo>>>());

    // todo一覧の取得を完了する。
    final todos = await container.read(todosNotifierProvider.future);

    // mockにaddする関数。
    await container.read(todosNotifierProvider.notifier).addTodo(
          postName: "うし",
          content: "おはよう",
        );

    // 取得されたTodo一覧が期待通りであることを検証する。
    expect(todos, [
      Todo(
        todoId: "1",
        postName: "こん",
        content: "おは",
      ),
      Todo(
        todoId: "2",
        postName: "こん",
        content: "おは",
      ),
      //　これが追加されることを確認する。
      Todo(
        todoId: "3",
        postName: "うし",
        content: "おはよう",
      ),
    ]);
  });
  // test(
  //   'fetch TodoList ',
  //   () async {
  //     final container = createContainer();
  //     final todoNotifier = await container
  //         .read(todoNotifierProvider("3S7UyC57mt138137mc5m").future);
  //     final postName = todoNotifier.postName;
  //     final content = todoNotifier.content;
  //     expect(
  //       postName, // actual 実際の値。今回は"Hello world"
  //       'うし', // matcher 期待する値　今回は"Hello world"
  //     );
  //     expect(
  //       content, // actual 実際の値。今回は"Hello world"
  //       'こんばんは', // matcher 期待する値　今回は"Hello world"
  //     );
  //   },
  // );
  // test(
  //   'documentId ',
  //   () async {
  //     final container = createContainer();
  //     final todoNotifier = await container
  //         .read(todoNotifierProvider("3S7UyC57mt138137mc5m").future);
  //     final postName = todoNotifier.postName;
  //     final content = todoNotifier.content;
  //     expect(
  //       postName, // actual 実際の値。今回は"Hello world"
  //       'うし', // matcher 期待する値　今回は"うし"
  //     );
  //     expect(
  //       content, // actual 実際の値。今回は"Hello world"
  //       'こんばんは', // matcher 期待する値　今回は"こんばんは"
  //     );
  //   },
  // );
}
