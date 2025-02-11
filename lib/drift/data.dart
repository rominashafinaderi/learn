import 'package:drift/drift.dart';
import 'package:flutter/cupertino.dart';
part 'data.g.dart';

class Products extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get descrition => text()();
}
abstract class productsView extends View{
  Products get products;
  @override
  Query as() => select([products.title]).from(products);
}
@Driftdatabase(table:[Products],views:[ProductsView])
 class Database extends _$Database{
  Database(QueryExecutor e):super(e);
  @override
  int get  schemaVersion =>2;
}
