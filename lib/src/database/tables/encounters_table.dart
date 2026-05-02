import 'dart:convert';

import 'package:drift/drift.dart';

import 'partners_table.dart';

class IntListConverter extends TypeConverter<List<int>, String> {
  const IntListConverter();

  @override
  List<int> fromSql(String fromDb) {
    final dynamic decoded = jsonDecode(fromDb);
    if (decoded is List) {
      return decoded.map((dynamic value) => value as int).toList();
    }
    return <int>[];
  }

  @override
  String toSql(List<int> value) => jsonEncode(value);
}

class Encounters extends Table {
  TextColumn get id => text()();
  TextColumn get partnerId => text().references(Partners, #id)();
  DateTimeColumn get date => dateTime()();
  IntColumn get scoreAmbiance => integer().nullable()();
  IntColumn get scorePrelim => integer().nullable()();
  IntColumn get scoreAct => integer().nullable()();
  IntColumn get scoreAftercare => integer().nullable()();
  TextColumn get adjectives =>
      text().map(const IntListConverter()).withDefault(const Constant('[]'))();
  TextColumn get notes => text().nullable()();
  BoolColumn get isSafeSex => boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
