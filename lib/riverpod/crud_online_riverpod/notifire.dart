import 'dart:convert';
import 'package:learn2/riverpod/crud_online_riverpod/model/todo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
part 'notifire.g.dart';
@riverpod
class TodoList extends _$TodoList {
  @override
  Future<List<TodoModel>> build() async => [
  ];

  // این متد جدید برای ارسال کار جدید به سرور است
  Future<void> addTodo(TodoModel todo) async {
    await http.post(
      Uri.https('your_api.com', '/todos'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(todo.toJson()),
    );
  }
}
