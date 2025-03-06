import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    /// ここにはwatch
    final todosAsyncValue = ref.watch(todosNotifierProvider);
    //  final result = ref.watch(fetchTodoListProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: Center(
              child: switch (todosAsyncValue) {
                AsyncData(:final value) => ListView.builder(
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      final todo = value[index];
                      return GestureDetector(
                        onTap: () {
                          /// ここにdocumentIdを引数で渡してDetailページに遷移する。
                        },
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Text(todo.content),
                        ),
                      );
                    }),
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
