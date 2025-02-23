import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/model/logic/todos.dart';

class TodoDetailPage extends ConsumerWidget {
  const TodoDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosAsyncValue =
        ref.watch(todosNotifierProvider("3S7UyC57mt138137mc5m"));
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(todosAsyncValue.valueOrNull?.first.postName ?? ""),
          Text(todosAsyncValue.valueOrNull?.first.content ?? ""),
        ],
      ),
    );
  }
}
