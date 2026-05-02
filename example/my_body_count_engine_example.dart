import 'package:drift/native.dart';
import 'package:my_body_count_engine/my_body_count_engine.dart';
import 'package:uuid/uuid.dart';

void main() async {
  print('--- Initialisation du moteur ---');
  // 1. Initialise une base de données en mémoire avec NativeDatabase.memory().
  final memoryDb = NativeDatabase.memory();

  // 2. Instancie AppDatabase, DatabaseRepository et StatsService.
  final db = AppDatabase(memoryDb);
  final repository = DatabaseRepository(db);
  final statsService = StatsService(repository);

  // 3. Crée un Partner (ex: "Alex", âge 28, genre Male). Sauvegarde-le via le repository.
  // (Génère un UUID pour l'ID avec le package uuid).
  final uuid = Uuid();
  final alexId = uuid.v4();

  final alex = Partner(
    id: alexId,
    firstName: 'Alex',
    age: 28,
    gender: Gender.Male,
    createdAt: DateTime.now(),
  );

  print('Sauvegarde du partenaire : ${alex.firstName}');
  await repository.savePartner(alex);

  // 4. Crée trois Encounter liés à l'ID d'Alex à des dates différentes.
  final now = DateTime.now();

  final encounter1 = Encounter(
    id: uuid.v4(),
    partnerId: alexId,
    date: now,
    scoreAmbiance: 5,
    scorePrelim: 5,
    scoreAct: 5,
    scoreAftercare: 5,
    notes: 'Excellent, 5 partout !',
  );

  final encounter2 = Encounter(
    id: uuid.v4(),
    partnerId: alexId,
    date: DateTime(now.year, now.month - 1, now.day),
    scoreAmbiance: 3,
    scorePrelim: 3,
    scoreAct: null,
    scoreAftercare: 3,
    notes: 'Moyen...',
  );

  final encounter3 = Encounter(
    id: uuid.v4(),
    partnerId: alexId,
    date: DateTime(now.year, now.month - 2, now.day),
    scoreAmbiance: 4,
    scorePrelim: 2,
    scoreAct: 4,
    scoreAftercare: null,
    notes: 'Pas mal',
  );

  print('Sauvegarde de 3 rencontres pour ${alex.firstName}...');
  await repository.saveEncounter(encounter1);
  await repository.saveEncounter(encounter2);
  await repository.saveEncounter(encounter3);

  print('\n--- Résultats ---');
  // 5. Utilise le StatsService pour :
  
  // - Calculer et afficher le score global d'Alex.
  final globalScore = await statsService.getGlobalPartnerScore(alexId);
  print('Score global d\'Alex : ${globalScore?.toStringAsFixed(2) ?? "N/A"}');

  // - Calculer et afficher le label d'Alex (EncounterLabel).
  final label = await statsService.getPartnerLabel(alexId);
  print('Label d\'Alex : ${label.name}');

  // - Récupérer et afficher la fréquence mensuelle.
  final frequency = await statsService.getMonthlyFrequency();
  print('Fréquence mensuelle des rencontres (6 derniers mois) :');
  if (frequency.isEmpty) {
    print('  Aucune donnée.');
  } else {
    frequency.forEach((date, count) {
      print('  - ${date.month}/${date.year} : $count rencontre(s)');
    });
  }

  // 7. N'oublie pas de fermer la base de données à la fin du script.
  print('\nFermeture de la base de données...');
  await db.close();
}
