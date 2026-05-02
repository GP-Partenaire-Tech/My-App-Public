import 'package:drift/native.dart';
import 'package:my_body_count_engine/my_body_count_engine.dart';
import 'package:sqlite3/sqlite3.dart' as sqlite;
import 'package:test/test.dart';

void main() {
  late AppDatabase db;
  late DatabaseRepository repository;

  setUp(() {
    db = AppDatabase(
      NativeDatabase.memory(
        setup: (sqlite.Database database) {
          database.execute('PRAGMA foreign_keys = ON;');
        },
      ),
    );
    repository = DatabaseRepository(db);
  });

  tearDown(() async {
    await db.close();
  });

  test('inserts and reads a partner', () async {
    final partner = Partner(
      id: 'p1',
      firstName: 'Alex',
      alias: 'A',
      gender: Gender.NonBinary,
      createdAt: DateTime(2026, 1, 1),
    );

    await repository.savePartner(partner);
    final partners = await repository.getAllPartners();

    expect(partners, hasLength(1));
    expect(partners.first.id, 'p1');
    expect(partners.first.firstName, 'Alex');
    expect(partners.first.gender, Gender.NonBinary);
  });

  test('filters partners by search query on firstName or alias', () async {
    final now = DateTime(2026, 1, 1);
    await repository.savePartner(
      Partner(
        id: 'p1',
        firstName: 'Alice',
        alias: 'Wonder',
        gender: Gender.Female,
        createdAt: now,
      ),
    );
    await repository.savePartner(
      Partner(
        id: 'p2',
        firstName: 'Bob',
        alias: 'Builder',
        gender: Gender.Male,
        createdAt: now.add(const Duration(seconds: 1)),
      ),
    );

    final byFirstName = await repository.getAllPartners(searchQuery: 'Ali');
    final byAlias = await repository.getAllPartners(searchQuery: 'Build');

    expect(byFirstName.map((p) => p.id), ['p1']);
    expect(byAlias.map((p) => p.id), ['p2']);
  });

  test('deleting partner cascades encounters', () async {
    const partnerId = 'partner-cascade';
    await repository.savePartner(
      Partner(
        id: partnerId,
        firstName: 'Casey',
        gender: Gender.Other,
        createdAt: DateTime(2026, 1, 2),
      ),
    );

    await repository.saveEncounter(
      Encounter(
        id: 'e1',
        partnerId: partnerId,
        date: DateTime(2026, 1, 3),
        adjectives: const ['1', '2'],
      ),
    );
    await repository.saveEncounter(
      Encounter(
        id: 'e2',
        partnerId: partnerId,
        date: DateTime(2026, 1, 4),
      ),
    );

    final beforeDelete = await repository.getEncountersForPartner(partnerId);
    expect(beforeDelete, hasLength(2));

    await repository.deletePartner(partnerId);

    final afterDelete = await repository.getEncountersForPartner(partnerId);
    expect(afterDelete, isEmpty);
  });

  test('gets encounters between inclusive dates', () async {
    const partnerId = 'partner-range';
    await repository.savePartner(
      Partner(
        id: partnerId,
        firstName: 'Robin',
        gender: Gender.Other,
        createdAt: DateTime(2026, 1, 1),
      ),
    );

    await repository.saveEncounter(
      Encounter(id: 'e-before', partnerId: partnerId, date: DateTime(2026, 1, 9)),
    );
    await repository.saveEncounter(
      Encounter(
        id: 'e-start',
        partnerId: partnerId,
        date: DateTime(2026, 1, 10),
      ),
    );
    await repository.saveEncounter(
      Encounter(id: 'e-mid', partnerId: partnerId, date: DateTime(2026, 1, 12)),
    );
    await repository.saveEncounter(
      Encounter(id: 'e-end', partnerId: partnerId, date: DateTime(2026, 1, 15)),
    );
    await repository.saveEncounter(
      Encounter(id: 'e-after', partnerId: partnerId, date: DateTime(2026, 1, 16)),
    );

    final encounters = await repository.getEncountersBetweenDates(
      DateTime(2026, 1, 10),
      DateTime(2026, 1, 15),
    );

    expect(encounters.map((encounter) => encounter.id).toList(), [
      'e-start',
      'e-mid',
      'e-end',
    ]);
  });
}
