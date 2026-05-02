import 'package:drift/drift.dart';

class Partners extends Table {
  TextColumn get id => text()();
  TextColumn get firstName => text().nullable()();
  TextColumn get alias => text().nullable()();
  IntColumn get age => integer().nullable()();
  IntColumn get gender => integer()();
  IntColumn get hair => integer().nullable()();
  IntColumn get eyes => integer().nullable()();
  IntColumn get skin => integer().nullable()();
  IntColumn get height => integer().nullable()();
  IntColumn get penisSize => integer().nullable()();
  IntColumn get chestSize => integer().nullable()();
  TextColumn get notes => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
