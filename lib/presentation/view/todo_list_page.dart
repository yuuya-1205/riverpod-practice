import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/domain/model/logic/todos.dart';

class TodoListPage extends ConsumerWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// このAsyncValueはswitch文を使う。
    final todoListAsyncValue = ref.watch(todosNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("TodoList"),
      ),
      body: Column(
        children: [
          switch (todoListAsyncValue) {
            AsyncData(:final value) => ListView.separated(
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: value.length,
                itemBuilder: (context, index) {
                  final todo = value[index];
                  return GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text("投稿者名："),
                              Text(todo.postName),
                            ],
                          ),
                          Row(
                            children: [
                              const Text("内容："),
                              Text(todo.content),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            AsyncError() => const Text("エラーです"),

            /// これは何？なんで閉じてるの？
            _ => const CircularProgressIndicator(),
          },
        ],
      ),
    );
  }
}
