import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn2/drift/database.dart';
import 'package:learn2/riverpod/offline_riverpod/offline_riverpod_screen.dart';

//main for riverpod

// void main() {
//   runApp(ProviderScope(child: const MyApp()));
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home:ProductScreen(),
//     );
//   }
// }

//main for drift
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database = AppDatabase(); //opening database
  //adding new todo
  await database.into(database.todoItems).insert(TodoItemsCompanion.insert(
        title: 'todo: finish drift setup',
        content: 'We can now write queries and define our own tables.',
      ));
  //get all the todos
  List<TodoItems> allItems = await database.select(database.todoItems).get();

  print('items in database: $allItems');
}
