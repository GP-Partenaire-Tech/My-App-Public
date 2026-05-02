// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Partner _$PartnerFromJson(Map<String, dynamic> json) => _Partner(
  id: json['id'] as String,
  firstName: json['firstName'] as String?,
  alias: json['alias'] as String?,
  age: (json['age'] as num?)?.toInt(),
  gender: $enumDecode(_$GenderEnumMap, json['gender']),
  hair: (json['hair'] as num?)?.toInt(),
  eyes: (json['eyes'] as num?)?.toInt(),
  skin: (json['skin'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  penisSize: (json['penisSize'] as num?)?.toInt(),
  chestSize: (json['chestSize'] as num?)?.toInt(),
  notes: json['notes'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$PartnerToJson(_Partner instance) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'alias': instance.alias,
  'age': instance.age,
  'gender': _$GenderEnumMap[instance.gender]!,
  'hair': instance.hair,
  'eyes': instance.eyes,
  'skin': instance.skin,
  'height': instance.height,
  'penisSize': instance.penisSize,
  'chestSize': instance.chestSize,
  'notes': instance.notes,
  'createdAt': instance.createdAt.toIso8601String(),
};

const _$GenderEnumMap = {
  Gender.Male: 'Male',
  Gender.Female: 'Female',
  Gender.NonBinary: 'NonBinary',
  Gender.Other: 'Other',
};
