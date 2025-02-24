import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/model/logic/todo.dart';

class TodoDetailPage extends ConsumerWidget {
  const TodoDetailPage({
    super.key,
    required this.documentId,
  });

  final String documentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoAsyncValue = ref.watch(todoNotifierProvider(documentId));
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
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("投稿者名："),
                      Text(todoAsyncValue.value?.postName ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("内容："),
                      Text(todoAsyncValue.value?.content ?? ""),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
