import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/model/logic/todo.dart';

class TodoDetailPage extends ConsumerWidget {
  const TodoDetailPage({
    super.key,
    required this.todoId,
  });

  final String todoId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ///TODO ここの変更を行う（Switch文に変更する。）
    final todoAsyncValue = ref.watch(todoNotifierProvider(todoId));
    return Scaffold(
      appBar: AppBar(
        title: const Text("投稿詳細"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: switch (todoAsyncValue) {
                AsyncData(:final value) => Column(
                    children: [
                      Row(
                        children: [
                          const Text("投稿者名："),
                          Text(value.postName),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("内容："),
                          Text(value.content),
                        ],
                      ),
                    ],
                  ),
                AsyncError() =>
                  const Text('Oops, something unexpected happened'),
                _ => const CircularProgressIndicator(),
              },
            ),
          ],
        ),
      ),
    );
  }
}
