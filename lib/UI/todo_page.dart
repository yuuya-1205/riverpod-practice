import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/UI/todo_detail_page.dart';
import 'package:flutter_riverpod_practice/model/logic/todos.dart';

class TodoPage extends ConsumerStatefulWidget {
  const TodoPage({super.key});

  @override
  ConsumerState<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends ConsumerState<TodoPage> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final todosAsyncValue = ref.watch(todosNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo一覧"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: Center(
              child: switch (todosAsyncValue) {
                AsyncData(:final value) => ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      final todo = value[index];
                      return GestureDetector(
                        // Todo detailページに画面遷移する。
                        onTap: () async {
                          await Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TodoDetailPage(
                                todoId: todo.todoId,
                              ),
                            ),
                          );
                        },
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
                    separatorBuilder: (_, __) => const SizedBox(height: 10)),
                AsyncError() =>
                  const Text('Oops, something unexpected happened'),
                _ => const CircularProgressIndicator(),
              },
            ),
          ),
          Column(
            children: [
              TextFormField(
                controller: _titleController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _contentController,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  child: const Text("投稿"),
                  onPressed: () async {
                    ///実行する時にnotifierを参照する、
                    await ref.read(todosNotifierProvider.notifier).addTodo(
                          postName: _titleController.text,
                          content: _contentController.text,
                        );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
