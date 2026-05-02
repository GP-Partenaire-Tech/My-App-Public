import '../models/encounter.dart';
import '../models/encounter_label.dart';
import 'database_repository.dart';

class StatsService {
  StatsService(this.repository);

  final DatabaseRepository repository;

  double? calculateEncounterAverage(Encounter encounter) {
    final scores = <int>[
      if (encounter.scoreAmbiance != null) encounter.scoreAmbiance!,
      if (encounter.scorePrelim != null) encounter.scorePrelim!,
      if (encounter.scoreAct != null) encounter.scoreAct!,
      if (encounter.scoreAftercare != null) encounter.scoreAftercare!,
    ];

    if (scores.isEmpty) {
      return null;
    }

    final total = scores.reduce((value, element) => value + element);
    return total / scores.length;
  }

  Future<double?> getGlobalPartnerScore(String partnerId) async {
    final encounters = await repository.getEncountersForPartner(partnerId);
    final averages = encounters
        .map(calculateEncounterAverage)
        .whereType<double>()
        .toList();

    if (averages.isEmpty) {
      return null;
    }

    final total = averages.reduce((value, element) => value + element);
    return total / averages.length;
  }

  Future<EncounterLabel> getPartnerLabel(String partnerId) async {
    final score = await getGlobalPartnerScore(partnerId);
    return EncounterLabel.fromScore(score);
  }

  Future<Map<DateTime, int>> getMonthlyFrequency({int monthsBack = 6}) async {
    final now = DateTime.now();
    final startMonth = DateTime(now.year, now.month - (monthsBack - 1), 1);
    final encounters = await repository.getEncountersBetweenDates(startMonth, now);
    final frequency = <DateTime, int>{};

    for (final encounter in encounters) {
      final monthKey = DateTime(encounter.date.year, encounter.date.month);
      frequency[monthKey] = (frequency[monthKey] ?? 0) + 1;
    }

    return frequency;
  }
}
