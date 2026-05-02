import 'package:drift/native.dart';
import 'package:my_body_count_engine/my_body_count_engine.dart';
import 'package:sqlite3/sqlite3.dart' as sqlite;
import 'package:test/test.dart';

void main() {
  late AppDatabase db;
  late DatabaseRepository repository;
  late StatsService statsService;

  setUp(() {
    db = AppDatabase(
      NativeDatabase.memory(
        setup: (sqlite.Database database) {
          database.execute('PRAGMA foreign_keys = ON;');
        },
      ),
    );
    repository = DatabaseRepository(db);
    statsService = StatsService(repository);
  });

  tearDown(() async {
    await db.close();
  });

  test('calculateEncounterAverage ignores null score fields', () {
    final encounter = Encounter(
      id: 'e-1',
      partnerId: 'p-1',
      date: DateTime(2026, 1, 1),
      scoreAmbiance: 4,
      scorePrelim: 2,
      scoreAct: null,
      scoreAftercare: 5,
    );

    final average = statsService.calculateEncounterAverage(encounter);
    expect(average, closeTo(11 / 3, 0.0001));
  });

  test('getMonthlyFrequency groups encounters by month', () async {
    const partnerId = 'p-frequency';
    await repository.savePartner(
      Partner(
        id: partnerId,
        firstName: 'Taylor',
        gender: Gender.Other,
        createdAt: DateTime(2026, 1, 1),
      ),
    );

    final now = DateTime.now();
    final currentMonth = DateTime(now.year, now.month, 1);
    final previousMonth = DateTime(now.year, now.month - 1, 1);
    final olderThanWindow = DateTime(now.year, now.month - 7, 1);

    await repository.saveEncounter(
      Encounter(id: 'current-1', partnerId: partnerId, date: currentMonth),
    );
    await repository.saveEncounter(
      Encounter(
        id: 'current-2',
        partnerId: partnerId,
        date: currentMonth.add(const Duration(days: 1)),
      ),
    );
    await repository.saveEncounter(
      Encounter(id: 'previous-1', partnerId: partnerId, date: previousMonth),
    );
    await repository.saveEncounter(
      Encounter(id: 'old-1', partnerId: partnerId, date: olderThanWindow),
    );

    final result = await statsService.getMonthlyFrequency(monthsBack: 6);

    expect(result[DateTime(currentMonth.year, currentMonth.month)], 2);
    expect(result[DateTime(previousMonth.year, previousMonth.month)], 1);
    expect(result.containsKey(DateTime(olderThanWindow.year, olderThanWindow.month)), isFalse);
  });
}
