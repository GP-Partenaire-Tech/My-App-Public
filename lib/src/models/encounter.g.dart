// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encounter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Encounter _$EncounterFromJson(Map<String, dynamic> json) => _Encounter(
  id: json['id'] as String,
  partnerId: json['partnerId'] as String,
  date: DateTime.parse(json['date'] as String),
  scoreAmbiance: (json['scoreAmbiance'] as num?)?.toInt(),
  scorePrelim: (json['scorePrelim'] as num?)?.toInt(),
  scoreAct: (json['scoreAct'] as num?)?.toInt(),
  scoreAftercare: (json['scoreAftercare'] as num?)?.toInt(),
  adjectives:
      (json['adjectives'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  notes: json['notes'] as String?,
  isSafeSex: json['isSafeSex'] as bool? ?? false,
);

Map<String, dynamic> _$EncounterToJson(_Encounter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partnerId': instance.partnerId,
      'date': instance.date.toIso8601String(),
      'scoreAmbiance': instance.scoreAmbiance,
      'scorePrelim': instance.scorePrelim,
      'scoreAct': instance.scoreAct,
      'scoreAftercare': instance.scoreAftercare,
      'adjectives': instance.adjectives,
      'notes': instance.notes,
      'isSafeSex': instance.isSafeSex,
    };
