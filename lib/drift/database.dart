import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

class TodoItems extends Table {
  //integer() = عدد (برای شناسه‌ها)
  // text() = متن (برای عنوان کارها)
  // dateTime() = تاریخ و ساعت (برای زمان ایجاد کار)
  // ✅ ستون id به‌صورت خودکار اضافه می‌شه و شماره‌ها رو زیاد می‌کنه.
  // ✅ ستون createdAt می‌تونه خالی (nullable) باشه.
  IntColumn get id => integer().autoIncrement()(); // auto pk
  TextColumn get title => text().withLength(min: 6, max: 32)();

  TextColumn get content => text().named('body')();//Required Columns

  DateTimeColumn get createdAt => dateTime().nullable()();
}

// حالا دیتابیس رو تعریف می‌کنیم و این جدول رو توش قرار می‌دیم
@DriftDatabase(tables: [TodoItems]) // // لیست جدول‌های دیتابیس
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection()); // تنظیمات اولیه دیتابیس

  @override
  int get schemaVersion => 1; // شماره نسخه دیتابیس

  static QueryExecutor _openConnection() {
    return FlutterQueryExecutor.inDatabaseFolder(
      path: 'my_database.sqlite', // ذخیره دیتابیس در فایل
      logStatements: true, // نمایش لاگ برای بررسی دیتابیس
    );
  }
}

//2////making custom pk:

// class profiles extends Table {
//   TextColumn get email => text()();
//
//   @override
//   Set<Column<Object>> get primaryKey => {email};
// }

//3//using mixin for sharing columns:

// mixin TableMixin on Table{
//   IntColumn get id => integer().autoIncrement()();
//   DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
// }
// class Posts extends Table with TableMixin{
//   TextColumn get content => text()();// حالا جدول Posts به‌صورت خودکار id و createdAt داره، بدون اینکه دوباره تایپ کنیم!
// }