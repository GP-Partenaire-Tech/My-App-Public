import 'package:drift/drift.dart';

import 'tables/encounters_table.dart';
import 'tables/partners_table.dart';

part 'database.g.dart';

@DriftDatabase(tables: [Partners, Encounters])
class AppDatabase extends _$AppDatabase {
  AppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
