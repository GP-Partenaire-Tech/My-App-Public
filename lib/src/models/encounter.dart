import 'package:freezed_annotation/freezed_annotation.dart';

part 'encounter.freezed.dart';
part 'encounter.g.dart';

@Freezed(fromJson: true, toJson: true)
abstract class Encounter with _$Encounter {
  const factory Encounter({
    required String id,
    required String partnerId,
    required DateTime date,
    int? scoreAmbiance,
    int? scorePrelim,
    int? scoreAct,
    int? scoreAftercare,
    @Default([]) List<String> adjectives,
    String? notes,
    @Default(false) bool isSafeSex,
  }) = _Encounter;

  factory Encounter.fromJson(Map<String, dynamic> json) =>
      _$EncounterFromJson(json);
}
