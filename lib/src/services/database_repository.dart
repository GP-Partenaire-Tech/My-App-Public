import 'package:drift/drift.dart';

import '../database/database.dart';
import '../models/encounter.dart' as model;
import '../models/gender.dart';
import '../models/partner.dart' as model;

class DatabaseRepository {
  DatabaseRepository(this.db);

  final AppDatabase db;

  Future<void> savePartner(model.Partner partner) {
    return db.into(db.partners).insertOnConflictUpdate(
          PartnersCompanion(
            id: Value(partner.id),
            firstName: Value(partner.firstName),
            alias: Value(partner.alias),
            age: Value(partner.age),
            gender: Value(_genderToDb(partner.gender)),
            hair: Value(partner.hair),
            eyes: Value(partner.eyes),
            skin: Value(partner.skin),
            height: Value(partner.height),
            penisSize: Value(partner.penisSize),
            chestSize: Value(partner.chestSize),
            notes: Value(partner.notes),
            createdAt: Value(partner.createdAt),
          ),
        );
  }

  Future<void> deletePartner(String partnerId) {
    return (db.delete(db.partners)..where((tbl) => tbl.id.equals(partnerId))).go();
  }

  Future<List<model.Partner>> getAllPartners({
    String? searchQuery,
    String sortBy = 'createdAt',
  }) async {
    final query = db.select(db.partners);
    final trimmed = searchQuery?.trim();

    if (trimmed != null && trimmed.isNotEmpty) {
      final pattern = '%$trimmed%';
      query.where(
        (tbl) => tbl.firstName.like(pattern) | tbl.alias.like(pattern),
      );
    }

    if (sortBy == 'createdAt') {
      query.orderBy([(tbl) => OrderingTerm.desc(tbl.createdAt)]);
    }

    final rows = await query.get();
    final partners = rows.map(_partnerFromRow).toList();

    if (sortBy == 'name') {
      partners.sort((a, b) {
        final left = _displayName(a).toLowerCase();
        final right = _displayName(b).toLowerCase();
        return left.compareTo(right);
      });
    }

    return partners;
  }

  Future<void> saveEncounter(model.Encounter encounter) {
    return db.into(db.encounters).insertOnConflictUpdate(
          EncountersCompanion(
            id: Value(encounter.id),
            partnerId: Value(encounter.partnerId),
            date: Value(encounter.date),
            scoreAmbiance: Value(encounter.scoreAmbiance),
            scorePrelim: Value(encounter.scorePrelim),
            scoreAct: Value(encounter.scoreAct),
            scoreAftercare: Value(encounter.scoreAftercare),
            adjectives: Value(_adjectivesToDb(encounter.adjectives)),
            notes: Value(encounter.notes),
            isSafeSex: Value(encounter.isSafeSex),
          ),
        );
  }

  Future<List<model.Encounter>> getEncountersForPartner(String partnerId) async {
    final query = db.select(db.encounters)
      ..where((tbl) => tbl.partnerId.equals(partnerId))
      ..orderBy([(tbl) => OrderingTerm.desc(tbl.date)]);

    final rows = await query.get();
    return rows.map(_encounterFromRow).toList();
  }

  model.Partner _partnerFromRow(Partner row) {
    return model.Partner(
      id: row.id,
      firstName: row.firstName,
      alias: row.alias,
      age: row.age,
      gender: _genderFromDb(row.gender),
      hair: row.hair,
      eyes: row.eyes,
      skin: row.skin,
      height: row.height,
      penisSize: row.penisSize,
      chestSize: row.chestSize,
      notes: row.notes,
      createdAt: row.createdAt,
    );
  }

  model.Encounter _encounterFromRow(Encounter row) {
    return model.Encounter(
      id: row.id,
      partnerId: row.partnerId,
      date: row.date,
      scoreAmbiance: row.scoreAmbiance,
      scorePrelim: row.scorePrelim,
      scoreAct: row.scoreAct,
      scoreAftercare: row.scoreAftercare,
      adjectives: _adjectivesFromDb(row.adjectives),
      notes: row.notes,
      isSafeSex: row.isSafeSex,
    );
  }

  int _genderToDb(Gender gender) => gender.index;

  Gender _genderFromDb(int index) {
    if (index < 0 || index >= Gender.values.length) {
      return Gender.Other;
    }
    return Gender.values[index];
  }

  List<int> _adjectivesToDb(List<String> adjectives) {
    return adjectives
        .map((value) => int.tryParse(value))
        .whereType<int>()
        .toList();
  }

  List<String> _adjectivesFromDb(List<int> adjectives) {
    return adjectives.map((value) => value.toString()).toList();
  }

  String _displayName(model.Partner partner) {
    final alias = partner.alias?.trim();
    if (alias != null && alias.isNotEmpty) {
      return alias;
    }
    final firstName = partner.firstName?.trim();
    if (firstName != null && firstName.isNotEmpty) {
      return firstName;
    }
    return '';
  }
}
