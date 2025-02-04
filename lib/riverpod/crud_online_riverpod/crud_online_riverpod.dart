
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn2/riverpod/crud_online_riverpod/model/todo_model.dart';
import 'package:learn2/riverpod/crud_online_riverpod/notifire.dart';
class Example extends ConsumerWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        // اینجا داریم متد "addTodo" رو صدا می‌زنیم
        // با استفاده از "ref.read"، متد "addTodo" رو از Notifier می‌خوانیم
        ref
            .read(todoListProvider.notifier)
            .addTodo(TodoModel(description: 'این یه کار جدیده!', completed: false));
      },
      child: const Text('اضافه کردن کار جدید'),
    );
  }
}
//Then, we can invoke this method in our UI using the same Consumer/ConsumerWidget we saw in Make your first provider/network request:

class Example2 extends ConsumerWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        // Using "ref.read" combined with "myProvider.notifier", we can
        // obtain the class instance of our notifier. This enables us
        // to call the "addTodo" method.
        ref
            .read(todoListProvider.notifier)
            .addTodo(TodoModel(description: 'This is a new todo', completed: false));
      },
      child: const Text('Add todo'),
    );
  }
}