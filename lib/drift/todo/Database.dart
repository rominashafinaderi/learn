import 'package:drift/drift.dart';
class TodoItems extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(max: 32,min: 6)();
  TextColumn get content => text().named('body')();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
Future<void> selectTodoItems() async{
  final allItems = await managers.todoItems.get();
  final stream = managers.todoItems.watch();
  final singleItem = await managers.todoItems.filter((f)=>f.id(1)).getSingle();
}

Future< void>  filterTodoItems() async {
  final itemWithTitle = await managers.todoItems.filter((f)=>f.title('title'));
  final itemWithCondition = await managers.todoItems.filter((f)=>f.title('title')& f.content('content'));
  final itemWithOrContent = await managers.todoItems.filter((f)=>f.title('title')| f.content.not.isNull());
}