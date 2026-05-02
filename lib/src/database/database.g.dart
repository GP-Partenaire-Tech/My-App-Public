// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $PartnersTable extends Partners with TableInfo<$PartnersTable, Partner> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PartnersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _firstNameMeta = const VerificationMeta(
    'firstName',
  );
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
    'first_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _aliasMeta = const VerificationMeta('alias');
  @override
  late final GeneratedColumn<String> alias = GeneratedColumn<String>(
    'alias',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<int> age = GeneratedColumn<int>(
    'age',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<int> gender = GeneratedColumn<int>(
    'gender',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _hairMeta = const VerificationMeta('hair');
  @override
  late final GeneratedColumn<int> hair = GeneratedColumn<int>(
    'hair',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _eyesMeta = const VerificationMeta('eyes');
  @override
  late final GeneratedColumn<int> eyes = GeneratedColumn<int>(
    'eyes',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _skinMeta = const VerificationMeta('skin');
  @override
  late final GeneratedColumn<int> skin = GeneratedColumn<int>(
    'skin',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
    'height',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _penisSizeMeta = const VerificationMeta(
    'penisSize',
  );
  @override
  late final GeneratedColumn<int> penisSize = GeneratedColumn<int>(
    'penis_size',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _chestSizeMeta = const VerificationMeta(
    'chestSize',
  );
  @override
  late final GeneratedColumn<int> chestSize = GeneratedColumn<int>(
    'chest_size',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    firstName,
    alias,
    age,
    gender,
    hair,
    eyes,
    skin,
    height,
    penisSize,
    chestSize,
    notes,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'partners';
  @override
  VerificationContext validateIntegrity(
    Insertable<Partner> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(
        _firstNameMeta,
        firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta),
      );
    }
    if (data.containsKey('alias')) {
      context.handle(
        _aliasMeta,
        alias.isAcceptableOrUnknown(data['alias']!, _aliasMeta),
      );
    }
    if (data.containsKey('age')) {
      context.handle(
        _ageMeta,
        age.isAcceptableOrUnknown(data['age']!, _ageMeta),
      );
    }
    if (data.containsKey('gender')) {
      context.handle(
        _genderMeta,
        gender.isAcceptableOrUnknown(data['gender']!, _genderMeta),
      );
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('hair')) {
      context.handle(
        _hairMeta,
        hair.isAcceptableOrUnknown(data['hair']!, _hairMeta),
      );
    }
    if (data.containsKey('eyes')) {
      context.handle(
        _eyesMeta,
        eyes.isAcceptableOrUnknown(data['eyes']!, _eyesMeta),
      );
    }
    if (data.containsKey('skin')) {
      context.handle(
        _skinMeta,
        skin.isAcceptableOrUnknown(data['skin']!, _skinMeta),
      );
    }
    if (data.containsKey('height')) {
      context.handle(
        _heightMeta,
        height.isAcceptableOrUnknown(data['height']!, _heightMeta),
      );
    }
    if (data.containsKey('penis_size')) {
      context.handle(
        _penisSizeMeta,
        penisSize.isAcceptableOrUnknown(data['penis_size']!, _penisSizeMeta),
      );
    }
    if (data.containsKey('chest_size')) {
      context.handle(
        _chestSizeMeta,
        chestSize.isAcceptableOrUnknown(data['chest_size']!, _chestSizeMeta),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Partner map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Partner(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      firstName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}first_name'],
      ),
      alias: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}alias'],
      ),
      age: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}age'],
      ),
      gender: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}gender'],
      )!,
      hair: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}hair'],
      ),
      eyes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}eyes'],
      ),
      skin: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}skin'],
      ),
      height: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}height'],
      ),
      penisSize: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}penis_size'],
      ),
      chestSize: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}chest_size'],
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $PartnersTable createAlias(String alias) {
    return $PartnersTable(attachedDatabase, alias);
  }
}

class Partner extends DataClass implements Insertable<Partner> {
  final String id;
  final String? firstName;
  final String? alias;
  final int? age;
  final int gender;
  final int? hair;
  final int? eyes;
  final int? skin;
  final int? height;
  final int? penisSize;
  final int? chestSize;
  final String? notes;
  final DateTime createdAt;
  const Partner({
    required this.id,
    this.firstName,
    this.alias,
    this.age,
    required this.gender,
    this.hair,
    this.eyes,
    this.skin,
    this.height,
    this.penisSize,
    this.chestSize,
    this.notes,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || alias != null) {
      map['alias'] = Variable<String>(alias);
    }
    if (!nullToAbsent || age != null) {
      map['age'] = Variable<int>(age);
    }
    map['gender'] = Variable<int>(gender);
    if (!nullToAbsent || hair != null) {
      map['hair'] = Variable<int>(hair);
    }
    if (!nullToAbsent || eyes != null) {
      map['eyes'] = Variable<int>(eyes);
    }
    if (!nullToAbsent || skin != null) {
      map['skin'] = Variable<int>(skin);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<int>(height);
    }
    if (!nullToAbsent || penisSize != null) {
      map['penis_size'] = Variable<int>(penisSize);
    }
    if (!nullToAbsent || chestSize != null) {
      map['chest_size'] = Variable<int>(chestSize);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  PartnersCompanion toCompanion(bool nullToAbsent) {
    return PartnersCompanion(
      id: Value(id),
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      alias: alias == null && nullToAbsent
          ? const Value.absent()
          : Value(alias),
      age: age == null && nullToAbsent ? const Value.absent() : Value(age),
      gender: Value(gender),
      hair: hair == null && nullToAbsent ? const Value.absent() : Value(hair),
      eyes: eyes == null && nullToAbsent ? const Value.absent() : Value(eyes),
      skin: skin == null && nullToAbsent ? const Value.absent() : Value(skin),
      height: height == null && nullToAbsent
          ? const Value.absent()
          : Value(height),
      penisSize: penisSize == null && nullToAbsent
          ? const Value.absent()
          : Value(penisSize),
      chestSize: chestSize == null && nullToAbsent
          ? const Value.absent()
          : Value(chestSize),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
      createdAt: Value(createdAt),
    );
  }

  factory Partner.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Partner(
      id: serializer.fromJson<String>(json['id']),
      firstName: serializer.fromJson<String?>(json['firstName']),
      alias: serializer.fromJson<String?>(json['alias']),
      age: serializer.fromJson<int?>(json['age']),
      gender: serializer.fromJson<int>(json['gender']),
      hair: serializer.fromJson<int?>(json['hair']),
      eyes: serializer.fromJson<int?>(json['eyes']),
      skin: serializer.fromJson<int?>(json['skin']),
      height: serializer.fromJson<int?>(json['height']),
      penisSize: serializer.fromJson<int?>(json['penisSize']),
      chestSize: serializer.fromJson<int?>(json['chestSize']),
      notes: serializer.fromJson<String?>(json['notes']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'firstName': serializer.toJson<String?>(firstName),
      'alias': serializer.toJson<String?>(alias),
      'age': serializer.toJson<int?>(age),
      'gender': serializer.toJson<int>(gender),
      'hair': serializer.toJson<int?>(hair),
      'eyes': serializer.toJson<int?>(eyes),
      'skin': serializer.toJson<int?>(skin),
      'height': serializer.toJson<int?>(height),
      'penisSize': serializer.toJson<int?>(penisSize),
      'chestSize': serializer.toJson<int?>(chestSize),
      'notes': serializer.toJson<String?>(notes),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Partner copyWith({
    String? id,
    Value<String?> firstName = const Value.absent(),
    Value<String?> alias = const Value.absent(),
    Value<int?> age = const Value.absent(),
    int? gender,
    Value<int?> hair = const Value.absent(),
    Value<int?> eyes = const Value.absent(),
    Value<int?> skin = const Value.absent(),
    Value<int?> height = const Value.absent(),
    Value<int?> penisSize = const Value.absent(),
    Value<int?> chestSize = const Value.absent(),
    Value<String?> notes = const Value.absent(),
    DateTime? createdAt,
  }) => Partner(
    id: id ?? this.id,
    firstName: firstName.present ? firstName.value : this.firstName,
    alias: alias.present ? alias.value : this.alias,
    age: age.present ? age.value : this.age,
    gender: gender ?? this.gender,
    hair: hair.present ? hair.value : this.hair,
    eyes: eyes.present ? eyes.value : this.eyes,
    skin: skin.present ? skin.value : this.skin,
    height: height.present ? height.value : this.height,
    penisSize: penisSize.present ? penisSize.value : this.penisSize,
    chestSize: chestSize.present ? chestSize.value : this.chestSize,
    notes: notes.present ? notes.value : this.notes,
    createdAt: createdAt ?? this.createdAt,
  );
  Partner copyWithCompanion(PartnersCompanion data) {
    return Partner(
      id: data.id.present ? data.id.value : this.id,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      alias: data.alias.present ? data.alias.value : this.alias,
      age: data.age.present ? data.age.value : this.age,
      gender: data.gender.present ? data.gender.value : this.gender,
      hair: data.hair.present ? data.hair.value : this.hair,
      eyes: data.eyes.present ? data.eyes.value : this.eyes,
      skin: data.skin.present ? data.skin.value : this.skin,
      height: data.height.present ? data.height.value : this.height,
      penisSize: data.penisSize.present ? data.penisSize.value : this.penisSize,
      chestSize: data.chestSize.present ? data.chestSize.value : this.chestSize,
      notes: data.notes.present ? data.notes.value : this.notes,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Partner(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('alias: $alias, ')
          ..write('age: $age, ')
          ..write('gender: $gender, ')
          ..write('hair: $hair, ')
          ..write('eyes: $eyes, ')
          ..write('skin: $skin, ')
          ..write('height: $height, ')
          ..write('penisSize: $penisSize, ')
          ..write('chestSize: $chestSize, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    firstName,
    alias,
    age,
    gender,
    hair,
    eyes,
    skin,
    height,
    penisSize,
    chestSize,
    notes,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Partner &&
          other.id == this.id &&
          other.firstName == this.firstName &&
          other.alias == this.alias &&
          other.age == this.age &&
          other.gender == this.gender &&
          other.hair == this.hair &&
          other.eyes == this.eyes &&
          other.skin == this.skin &&
          other.height == this.height &&
          other.penisSize == this.penisSize &&
          other.chestSize == this.chestSize &&
          other.notes == this.notes &&
          other.createdAt == this.createdAt);
}

class PartnersCompanion extends UpdateCompanion<Partner> {
  final Value<String> id;
  final Value<String?> firstName;
  final Value<String?> alias;
  final Value<int?> age;
  final Value<int> gender;
  final Value<int?> hair;
  final Value<int?> eyes;
  final Value<int?> skin;
  final Value<int?> height;
  final Value<int?> penisSize;
  final Value<int?> chestSize;
  final Value<String?> notes;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const PartnersCompanion({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.alias = const Value.absent(),
    this.age = const Value.absent(),
    this.gender = const Value.absent(),
    this.hair = const Value.absent(),
    this.eyes = const Value.absent(),
    this.skin = const Value.absent(),
    this.height = const Value.absent(),
    this.penisSize = const Value.absent(),
    this.chestSize = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PartnersCompanion.insert({
    required String id,
    this.firstName = const Value.absent(),
    this.alias = const Value.absent(),
    this.age = const Value.absent(),
    required int gender,
    this.hair = const Value.absent(),
    this.eyes = const Value.absent(),
    this.skin = const Value.absent(),
    this.height = const Value.absent(),
    this.penisSize = const Value.absent(),
    this.chestSize = const Value.absent(),
    this.notes = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       gender = Value(gender),
       createdAt = Value(createdAt);
  static Insertable<Partner> custom({
    Expression<String>? id,
    Expression<String>? firstName,
    Expression<String>? alias,
    Expression<int>? age,
    Expression<int>? gender,
    Expression<int>? hair,
    Expression<int>? eyes,
    Expression<int>? skin,
    Expression<int>? height,
    Expression<int>? penisSize,
    Expression<int>? chestSize,
    Expression<String>? notes,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstName != null) 'first_name': firstName,
      if (alias != null) 'alias': alias,
      if (age != null) 'age': age,
      if (gender != null) 'gender': gender,
      if (hair != null) 'hair': hair,
      if (eyes != null) 'eyes': eyes,
      if (skin != null) 'skin': skin,
      if (height != null) 'height': height,
      if (penisSize != null) 'penis_size': penisSize,
      if (chestSize != null) 'chest_size': chestSize,
      if (notes != null) 'notes': notes,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PartnersCompanion copyWith({
    Value<String>? id,
    Value<String?>? firstName,
    Value<String?>? alias,
    Value<int?>? age,
    Value<int>? gender,
    Value<int?>? hair,
    Value<int?>? eyes,
    Value<int?>? skin,
    Value<int?>? height,
    Value<int?>? penisSize,
    Value<int?>? chestSize,
    Value<String?>? notes,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return PartnersCompanion(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      alias: alias ?? this.alias,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      hair: hair ?? this.hair,
      eyes: eyes ?? this.eyes,
      skin: skin ?? this.skin,
      height: height ?? this.height,
      penisSize: penisSize ?? this.penisSize,
      chestSize: chestSize ?? this.chestSize,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (alias.present) {
      map['alias'] = Variable<String>(alias.value);
    }
    if (age.present) {
      map['age'] = Variable<int>(age.value);
    }
    if (gender.present) {
      map['gender'] = Variable<int>(gender.value);
    }
    if (hair.present) {
      map['hair'] = Variable<int>(hair.value);
    }
    if (eyes.present) {
      map['eyes'] = Variable<int>(eyes.value);
    }
    if (skin.present) {
      map['skin'] = Variable<int>(skin.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (penisSize.present) {
      map['penis_size'] = Variable<int>(penisSize.value);
    }
    if (chestSize.present) {
      map['chest_size'] = Variable<int>(chestSize.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PartnersCompanion(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('alias: $alias, ')
          ..write('age: $age, ')
          ..write('gender: $gender, ')
          ..write('hair: $hair, ')
          ..write('eyes: $eyes, ')
          ..write('skin: $skin, ')
          ..write('height: $height, ')
          ..write('penisSize: $penisSize, ')
          ..write('chestSize: $chestSize, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EncountersTable extends Encounters
    with TableInfo<$EncountersTable, Encounter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EncountersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _partnerIdMeta = const VerificationMeta(
    'partnerId',
  );
  @override
  late final GeneratedColumn<String> partnerId = GeneratedColumn<String>(
    'partner_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES partners (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scoreAmbianceMeta = const VerificationMeta(
    'scoreAmbiance',
  );
  @override
  late final GeneratedColumn<int> scoreAmbiance = GeneratedColumn<int>(
    'score_ambiance',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _scorePrelimMeta = const VerificationMeta(
    'scorePrelim',
  );
  @override
  late final GeneratedColumn<int> scorePrelim = GeneratedColumn<int>(
    'score_prelim',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _scoreActMeta = const VerificationMeta(
    'scoreAct',
  );
  @override
  late final GeneratedColumn<int> scoreAct = GeneratedColumn<int>(
    'score_act',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _scoreAftercareMeta = const VerificationMeta(
    'scoreAftercare',
  );
  @override
  late final GeneratedColumn<int> scoreAftercare = GeneratedColumn<int>(
    'score_aftercare',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<int>, String> adjectives =
      GeneratedColumn<String>(
        'adjectives',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('[]'),
      ).withConverter<List<int>>($EncountersTable.$converteradjectives);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isSafeSexMeta = const VerificationMeta(
    'isSafeSex',
  );
  @override
  late final GeneratedColumn<bool> isSafeSex = GeneratedColumn<bool>(
    'is_safe_sex',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_safe_sex" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    partnerId,
    date,
    scoreAmbiance,
    scorePrelim,
    scoreAct,
    scoreAftercare,
    adjectives,
    notes,
    isSafeSex,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'encounters';
  @override
  VerificationContext validateIntegrity(
    Insertable<Encounter> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('partner_id')) {
      context.handle(
        _partnerIdMeta,
        partnerId.isAcceptableOrUnknown(data['partner_id']!, _partnerIdMeta),
      );
    } else if (isInserting) {
      context.missing(_partnerIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('score_ambiance')) {
      context.handle(
        _scoreAmbianceMeta,
        scoreAmbiance.isAcceptableOrUnknown(
          data['score_ambiance']!,
          _scoreAmbianceMeta,
        ),
      );
    }
    if (data.containsKey('score_prelim')) {
      context.handle(
        _scorePrelimMeta,
        scorePrelim.isAcceptableOrUnknown(
          data['score_prelim']!,
          _scorePrelimMeta,
        ),
      );
    }
    if (data.containsKey('score_act')) {
      context.handle(
        _scoreActMeta,
        scoreAct.isAcceptableOrUnknown(data['score_act']!, _scoreActMeta),
      );
    }
    if (data.containsKey('score_aftercare')) {
      context.handle(
        _scoreAftercareMeta,
        scoreAftercare.isAcceptableOrUnknown(
          data['score_aftercare']!,
          _scoreAftercareMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('is_safe_sex')) {
      context.handle(
        _isSafeSexMeta,
        isSafeSex.isAcceptableOrUnknown(data['is_safe_sex']!, _isSafeSexMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Encounter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Encounter(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      partnerId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}partner_id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      scoreAmbiance: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}score_ambiance'],
      ),
      scorePrelim: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}score_prelim'],
      ),
      scoreAct: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}score_act'],
      ),
      scoreAftercare: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}score_aftercare'],
      ),
      adjectives: $EncountersTable.$converteradjectives.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}adjectives'],
        )!,
      ),
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      isSafeSex: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_safe_sex'],
      )!,
    );
  }

  @override
  $EncountersTable createAlias(String alias) {
    return $EncountersTable(attachedDatabase, alias);
  }

  static TypeConverter<List<int>, String> $converteradjectives =
      const IntListConverter();
}

class Encounter extends DataClass implements Insertable<Encounter> {
  final String id;
  final String partnerId;
  final DateTime date;
  final int? scoreAmbiance;
  final int? scorePrelim;
  final int? scoreAct;
  final int? scoreAftercare;
  final List<int> adjectives;
  final String? notes;
  final bool isSafeSex;
  const Encounter({
    required this.id,
    required this.partnerId,
    required this.date,
    this.scoreAmbiance,
    this.scorePrelim,
    this.scoreAct,
    this.scoreAftercare,
    required this.adjectives,
    this.notes,
    required this.isSafeSex,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['partner_id'] = Variable<String>(partnerId);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || scoreAmbiance != null) {
      map['score_ambiance'] = Variable<int>(scoreAmbiance);
    }
    if (!nullToAbsent || scorePrelim != null) {
      map['score_prelim'] = Variable<int>(scorePrelim);
    }
    if (!nullToAbsent || scoreAct != null) {
      map['score_act'] = Variable<int>(scoreAct);
    }
    if (!nullToAbsent || scoreAftercare != null) {
      map['score_aftercare'] = Variable<int>(scoreAftercare);
    }
    {
      map['adjectives'] = Variable<String>(
        $EncountersTable.$converteradjectives.toSql(adjectives),
      );
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['is_safe_sex'] = Variable<bool>(isSafeSex);
    return map;
  }

  EncountersCompanion toCompanion(bool nullToAbsent) {
    return EncountersCompanion(
      id: Value(id),
      partnerId: Value(partnerId),
      date: Value(date),
      scoreAmbiance: scoreAmbiance == null && nullToAbsent
          ? const Value.absent()
          : Value(scoreAmbiance),
      scorePrelim: scorePrelim == null && nullToAbsent
          ? const Value.absent()
          : Value(scorePrelim),
      scoreAct: scoreAct == null && nullToAbsent
          ? const Value.absent()
          : Value(scoreAct),
      scoreAftercare: scoreAftercare == null && nullToAbsent
          ? const Value.absent()
          : Value(scoreAftercare),
      adjectives: Value(adjectives),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
      isSafeSex: Value(isSafeSex),
    );
  }

  factory Encounter.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Encounter(
      id: serializer.fromJson<String>(json['id']),
      partnerId: serializer.fromJson<String>(json['partnerId']),
      date: serializer.fromJson<DateTime>(json['date']),
      scoreAmbiance: serializer.fromJson<int?>(json['scoreAmbiance']),
      scorePrelim: serializer.fromJson<int?>(json['scorePrelim']),
      scoreAct: serializer.fromJson<int?>(json['scoreAct']),
      scoreAftercare: serializer.fromJson<int?>(json['scoreAftercare']),
      adjectives: serializer.fromJson<List<int>>(json['adjectives']),
      notes: serializer.fromJson<String?>(json['notes']),
      isSafeSex: serializer.fromJson<bool>(json['isSafeSex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'partnerId': serializer.toJson<String>(partnerId),
      'date': serializer.toJson<DateTime>(date),
      'scoreAmbiance': serializer.toJson<int?>(scoreAmbiance),
      'scorePrelim': serializer.toJson<int?>(scorePrelim),
      'scoreAct': serializer.toJson<int?>(scoreAct),
      'scoreAftercare': serializer.toJson<int?>(scoreAftercare),
      'adjectives': serializer.toJson<List<int>>(adjectives),
      'notes': serializer.toJson<String?>(notes),
      'isSafeSex': serializer.toJson<bool>(isSafeSex),
    };
  }

  Encounter copyWith({
    String? id,
    String? partnerId,
    DateTime? date,
    Value<int?> scoreAmbiance = const Value.absent(),
    Value<int?> scorePrelim = const Value.absent(),
    Value<int?> scoreAct = const Value.absent(),
    Value<int?> scoreAftercare = const Value.absent(),
    List<int>? adjectives,
    Value<String?> notes = const Value.absent(),
    bool? isSafeSex,
  }) => Encounter(
    id: id ?? this.id,
    partnerId: partnerId ?? this.partnerId,
    date: date ?? this.date,
    scoreAmbiance: scoreAmbiance.present
        ? scoreAmbiance.value
        : this.scoreAmbiance,
    scorePrelim: scorePrelim.present ? scorePrelim.value : this.scorePrelim,
    scoreAct: scoreAct.present ? scoreAct.value : this.scoreAct,
    scoreAftercare: scoreAftercare.present
        ? scoreAftercare.value
        : this.scoreAftercare,
    adjectives: adjectives ?? this.adjectives,
    notes: notes.present ? notes.value : this.notes,
    isSafeSex: isSafeSex ?? this.isSafeSex,
  );
  Encounter copyWithCompanion(EncountersCompanion data) {
    return Encounter(
      id: data.id.present ? data.id.value : this.id,
      partnerId: data.partnerId.present ? data.partnerId.value : this.partnerId,
      date: data.date.present ? data.date.value : this.date,
      scoreAmbiance: data.scoreAmbiance.present
          ? data.scoreAmbiance.value
          : this.scoreAmbiance,
      scorePrelim: data.scorePrelim.present
          ? data.scorePrelim.value
          : this.scorePrelim,
      scoreAct: data.scoreAct.present ? data.scoreAct.value : this.scoreAct,
      scoreAftercare: data.scoreAftercare.present
          ? data.scoreAftercare.value
          : this.scoreAftercare,
      adjectives: data.adjectives.present
          ? data.adjectives.value
          : this.adjectives,
      notes: data.notes.present ? data.notes.value : this.notes,
      isSafeSex: data.isSafeSex.present ? data.isSafeSex.value : this.isSafeSex,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Encounter(')
          ..write('id: $id, ')
          ..write('partnerId: $partnerId, ')
          ..write('date: $date, ')
          ..write('scoreAmbiance: $scoreAmbiance, ')
          ..write('scorePrelim: $scorePrelim, ')
          ..write('scoreAct: $scoreAct, ')
          ..write('scoreAftercare: $scoreAftercare, ')
          ..write('adjectives: $adjectives, ')
          ..write('notes: $notes, ')
          ..write('isSafeSex: $isSafeSex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    partnerId,
    date,
    scoreAmbiance,
    scorePrelim,
    scoreAct,
    scoreAftercare,
    adjectives,
    notes,
    isSafeSex,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Encounter &&
          other.id == this.id &&
          other.partnerId == this.partnerId &&
          other.date == this.date &&
          other.scoreAmbiance == this.scoreAmbiance &&
          other.scorePrelim == this.scorePrelim &&
          other.scoreAct == this.scoreAct &&
          other.scoreAftercare == this.scoreAftercare &&
          other.adjectives == this.adjectives &&
          other.notes == this.notes &&
          other.isSafeSex == this.isSafeSex);
}

class EncountersCompanion extends UpdateCompanion<Encounter> {
  final Value<String> id;
  final Value<String> partnerId;
  final Value<DateTime> date;
  final Value<int?> scoreAmbiance;
  final Value<int?> scorePrelim;
  final Value<int?> scoreAct;
  final Value<int?> scoreAftercare;
  final Value<List<int>> adjectives;
  final Value<String?> notes;
  final Value<bool> isSafeSex;
  final Value<int> rowid;
  const EncountersCompanion({
    this.id = const Value.absent(),
    this.partnerId = const Value.absent(),
    this.date = const Value.absent(),
    this.scoreAmbiance = const Value.absent(),
    this.scorePrelim = const Value.absent(),
    this.scoreAct = const Value.absent(),
    this.scoreAftercare = const Value.absent(),
    this.adjectives = const Value.absent(),
    this.notes = const Value.absent(),
    this.isSafeSex = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EncountersCompanion.insert({
    required String id,
    required String partnerId,
    required DateTime date,
    this.scoreAmbiance = const Value.absent(),
    this.scorePrelim = const Value.absent(),
    this.scoreAct = const Value.absent(),
    this.scoreAftercare = const Value.absent(),
    this.adjectives = const Value.absent(),
    this.notes = const Value.absent(),
    this.isSafeSex = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       partnerId = Value(partnerId),
       date = Value(date);
  static Insertable<Encounter> custom({
    Expression<String>? id,
    Expression<String>? partnerId,
    Expression<DateTime>? date,
    Expression<int>? scoreAmbiance,
    Expression<int>? scorePrelim,
    Expression<int>? scoreAct,
    Expression<int>? scoreAftercare,
    Expression<String>? adjectives,
    Expression<String>? notes,
    Expression<bool>? isSafeSex,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (partnerId != null) 'partner_id': partnerId,
      if (date != null) 'date': date,
      if (scoreAmbiance != null) 'score_ambiance': scoreAmbiance,
      if (scorePrelim != null) 'score_prelim': scorePrelim,
      if (scoreAct != null) 'score_act': scoreAct,
      if (scoreAftercare != null) 'score_aftercare': scoreAftercare,
      if (adjectives != null) 'adjectives': adjectives,
      if (notes != null) 'notes': notes,
      if (isSafeSex != null) 'is_safe_sex': isSafeSex,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EncountersCompanion copyWith({
    Value<String>? id,
    Value<String>? partnerId,
    Value<DateTime>? date,
    Value<int?>? scoreAmbiance,
    Value<int?>? scorePrelim,
    Value<int?>? scoreAct,
    Value<int?>? scoreAftercare,
    Value<List<int>>? adjectives,
    Value<String?>? notes,
    Value<bool>? isSafeSex,
    Value<int>? rowid,
  }) {
    return EncountersCompanion(
      id: id ?? this.id,
      partnerId: partnerId ?? this.partnerId,
      date: date ?? this.date,
      scoreAmbiance: scoreAmbiance ?? this.scoreAmbiance,
      scorePrelim: scorePrelim ?? this.scorePrelim,
      scoreAct: scoreAct ?? this.scoreAct,
      scoreAftercare: scoreAftercare ?? this.scoreAftercare,
      adjectives: adjectives ?? this.adjectives,
      notes: notes ?? this.notes,
      isSafeSex: isSafeSex ?? this.isSafeSex,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (partnerId.present) {
      map['partner_id'] = Variable<String>(partnerId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (scoreAmbiance.present) {
      map['score_ambiance'] = Variable<int>(scoreAmbiance.value);
    }
    if (scorePrelim.present) {
      map['score_prelim'] = Variable<int>(scorePrelim.value);
    }
    if (scoreAct.present) {
      map['score_act'] = Variable<int>(scoreAct.value);
    }
    if (scoreAftercare.present) {
      map['score_aftercare'] = Variable<int>(scoreAftercare.value);
    }
    if (adjectives.present) {
      map['adjectives'] = Variable<String>(
        $EncountersTable.$converteradjectives.toSql(adjectives.value),
      );
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (isSafeSex.present) {
      map['is_safe_sex'] = Variable<bool>(isSafeSex.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EncountersCompanion(')
          ..write('id: $id, ')
          ..write('partnerId: $partnerId, ')
          ..write('date: $date, ')
          ..write('scoreAmbiance: $scoreAmbiance, ')
          ..write('scorePrelim: $scorePrelim, ')
          ..write('scoreAct: $scoreAct, ')
          ..write('scoreAftercare: $scoreAftercare, ')
          ..write('adjectives: $adjectives, ')
          ..write('notes: $notes, ')
          ..write('isSafeSex: $isSafeSex, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PartnersTable partners = $PartnersTable(this);
  late final $EncountersTable encounters = $EncountersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [partners, encounters];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'partners',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('encounters', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$PartnersTableCreateCompanionBuilder =
    PartnersCompanion Function({
      required String id,
      Value<String?> firstName,
      Value<String?> alias,
      Value<int?> age,
      required int gender,
      Value<int?> hair,
      Value<int?> eyes,
      Value<int?> skin,
      Value<int?> height,
      Value<int?> penisSize,
      Value<int?> chestSize,
      Value<String?> notes,
      required DateTime createdAt,
      Value<int> rowid,
    });
typedef $$PartnersTableUpdateCompanionBuilder =
    PartnersCompanion Function({
      Value<String> id,
      Value<String?> firstName,
      Value<String?> alias,
      Value<int?> age,
      Value<int> gender,
      Value<int?> hair,
      Value<int?> eyes,
      Value<int?> skin,
      Value<int?> height,
      Value<int?> penisSize,
      Value<int?> chestSize,
      Value<String?> notes,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$PartnersTableReferences
    extends BaseReferences<_$AppDatabase, $PartnersTable, Partner> {
  $$PartnersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$EncountersTable, List<Encounter>>
  _encountersRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.encounters,
    aliasName: $_aliasNameGenerator(db.partners.id, db.encounters.partnerId),
  );

  $$EncountersTableProcessedTableManager get encountersRefs {
    final manager = $$EncountersTableTableManager(
      $_db,
      $_db.encounters,
    ).filter((f) => f.partnerId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_encountersRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PartnersTableFilterComposer
    extends Composer<_$AppDatabase, $PartnersTable> {
  $$PartnersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get alias => $composableBuilder(
    column: $table.alias,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get hair => $composableBuilder(
    column: $table.hair,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get eyes => $composableBuilder(
    column: $table.eyes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get skin => $composableBuilder(
    column: $table.skin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get penisSize => $composableBuilder(
    column: $table.penisSize,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get chestSize => $composableBuilder(
    column: $table.chestSize,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> encountersRefs(
    Expression<bool> Function($$EncountersTableFilterComposer f) f,
  ) {
    final $$EncountersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.encounters,
      getReferencedColumn: (t) => t.partnerId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EncountersTableFilterComposer(
            $db: $db,
            $table: $db.encounters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PartnersTableOrderingComposer
    extends Composer<_$AppDatabase, $PartnersTable> {
  $$PartnersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firstName => $composableBuilder(
    column: $table.firstName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get alias => $composableBuilder(
    column: $table.alias,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get hair => $composableBuilder(
    column: $table.hair,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get eyes => $composableBuilder(
    column: $table.eyes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get skin => $composableBuilder(
    column: $table.skin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get penisSize => $composableBuilder(
    column: $table.penisSize,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get chestSize => $composableBuilder(
    column: $table.chestSize,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PartnersTableAnnotationComposer
    extends Composer<_$AppDatabase, $PartnersTable> {
  $$PartnersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get alias =>
      $composableBuilder(column: $table.alias, builder: (column) => column);

  GeneratedColumn<int> get age =>
      $composableBuilder(column: $table.age, builder: (column) => column);

  GeneratedColumn<int> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<int> get hair =>
      $composableBuilder(column: $table.hair, builder: (column) => column);

  GeneratedColumn<int> get eyes =>
      $composableBuilder(column: $table.eyes, builder: (column) => column);

  GeneratedColumn<int> get skin =>
      $composableBuilder(column: $table.skin, builder: (column) => column);

  GeneratedColumn<int> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<int> get penisSize =>
      $composableBuilder(column: $table.penisSize, builder: (column) => column);

  GeneratedColumn<int> get chestSize =>
      $composableBuilder(column: $table.chestSize, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> encountersRefs<T extends Object>(
    Expression<T> Function($$EncountersTableAnnotationComposer a) f,
  ) {
    final $$EncountersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.encounters,
      getReferencedColumn: (t) => t.partnerId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EncountersTableAnnotationComposer(
            $db: $db,
            $table: $db.encounters,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PartnersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PartnersTable,
          Partner,
          $$PartnersTableFilterComposer,
          $$PartnersTableOrderingComposer,
          $$PartnersTableAnnotationComposer,
          $$PartnersTableCreateCompanionBuilder,
          $$PartnersTableUpdateCompanionBuilder,
          (Partner, $$PartnersTableReferences),
          Partner,
          PrefetchHooks Function({bool encountersRefs})
        > {
  $$PartnersTableTableManager(_$AppDatabase db, $PartnersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PartnersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PartnersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PartnersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String?> firstName = const Value.absent(),
                Value<String?> alias = const Value.absent(),
                Value<int?> age = const Value.absent(),
                Value<int> gender = const Value.absent(),
                Value<int?> hair = const Value.absent(),
                Value<int?> eyes = const Value.absent(),
                Value<int?> skin = const Value.absent(),
                Value<int?> height = const Value.absent(),
                Value<int?> penisSize = const Value.absent(),
                Value<int?> chestSize = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PartnersCompanion(
                id: id,
                firstName: firstName,
                alias: alias,
                age: age,
                gender: gender,
                hair: hair,
                eyes: eyes,
                skin: skin,
                height: height,
                penisSize: penisSize,
                chestSize: chestSize,
                notes: notes,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String?> firstName = const Value.absent(),
                Value<String?> alias = const Value.absent(),
                Value<int?> age = const Value.absent(),
                required int gender,
                Value<int?> hair = const Value.absent(),
                Value<int?> eyes = const Value.absent(),
                Value<int?> skin = const Value.absent(),
                Value<int?> height = const Value.absent(),
                Value<int?> penisSize = const Value.absent(),
                Value<int?> chestSize = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => PartnersCompanion.insert(
                id: id,
                firstName: firstName,
                alias: alias,
                age: age,
                gender: gender,
                hair: hair,
                eyes: eyes,
                skin: skin,
                height: height,
                penisSize: penisSize,
                chestSize: chestSize,
                notes: notes,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PartnersTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({encountersRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (encountersRefs) db.encounters],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (encountersRefs)
                    await $_getPrefetchedData<
                      Partner,
                      $PartnersTable,
                      Encounter
                    >(
                      currentTable: table,
                      referencedTable: $$PartnersTableReferences
                          ._encountersRefsTable(db),
                      managerFromTypedResult: (p0) => $$PartnersTableReferences(
                        db,
                        table,
                        p0,
                      ).encountersRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.partnerId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$PartnersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PartnersTable,
      Partner,
      $$PartnersTableFilterComposer,
      $$PartnersTableOrderingComposer,
      $$PartnersTableAnnotationComposer,
      $$PartnersTableCreateCompanionBuilder,
      $$PartnersTableUpdateCompanionBuilder,
      (Partner, $$PartnersTableReferences),
      Partner,
      PrefetchHooks Function({bool encountersRefs})
    >;
typedef $$EncountersTableCreateCompanionBuilder =
    EncountersCompanion Function({
      required String id,
      required String partnerId,
      required DateTime date,
      Value<int?> scoreAmbiance,
      Value<int?> scorePrelim,
      Value<int?> scoreAct,
      Value<int?> scoreAftercare,
      Value<List<int>> adjectives,
      Value<String?> notes,
      Value<bool> isSafeSex,
      Value<int> rowid,
    });
typedef $$EncountersTableUpdateCompanionBuilder =
    EncountersCompanion Function({
      Value<String> id,
      Value<String> partnerId,
      Value<DateTime> date,
      Value<int?> scoreAmbiance,
      Value<int?> scorePrelim,
      Value<int?> scoreAct,
      Value<int?> scoreAftercare,
      Value<List<int>> adjectives,
      Value<String?> notes,
      Value<bool> isSafeSex,
      Value<int> rowid,
    });

final class $$EncountersTableReferences
    extends BaseReferences<_$AppDatabase, $EncountersTable, Encounter> {
  $$EncountersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PartnersTable _partnerIdTable(_$AppDatabase db) =>
      db.partners.createAlias(
        $_aliasNameGenerator(db.encounters.partnerId, db.partners.id),
      );

  $$PartnersTableProcessedTableManager get partnerId {
    final $_column = $_itemColumn<String>('partner_id')!;

    final manager = $$PartnersTableTableManager(
      $_db,
      $_db.partners,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_partnerIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$EncountersTableFilterComposer
    extends Composer<_$AppDatabase, $EncountersTable> {
  $$EncountersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get scoreAmbiance => $composableBuilder(
    column: $table.scoreAmbiance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get scorePrelim => $composableBuilder(
    column: $table.scorePrelim,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get scoreAct => $composableBuilder(
    column: $table.scoreAct,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get scoreAftercare => $composableBuilder(
    column: $table.scoreAftercare,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<int>, List<int>, String> get adjectives =>
      $composableBuilder(
        column: $table.adjectives,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isSafeSex => $composableBuilder(
    column: $table.isSafeSex,
    builder: (column) => ColumnFilters(column),
  );

  $$PartnersTableFilterComposer get partnerId {
    final $$PartnersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.partnerId,
      referencedTable: $db.partners,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PartnersTableFilterComposer(
            $db: $db,
            $table: $db.partners,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EncountersTableOrderingComposer
    extends Composer<_$AppDatabase, $EncountersTable> {
  $$EncountersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get scoreAmbiance => $composableBuilder(
    column: $table.scoreAmbiance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get scorePrelim => $composableBuilder(
    column: $table.scorePrelim,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get scoreAct => $composableBuilder(
    column: $table.scoreAct,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get scoreAftercare => $composableBuilder(
    column: $table.scoreAftercare,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get adjectives => $composableBuilder(
    column: $table.adjectives,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isSafeSex => $composableBuilder(
    column: $table.isSafeSex,
    builder: (column) => ColumnOrderings(column),
  );

  $$PartnersTableOrderingComposer get partnerId {
    final $$PartnersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.partnerId,
      referencedTable: $db.partners,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PartnersTableOrderingComposer(
            $db: $db,
            $table: $db.partners,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EncountersTableAnnotationComposer
    extends Composer<_$AppDatabase, $EncountersTable> {
  $$EncountersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<int> get scoreAmbiance => $composableBuilder(
    column: $table.scoreAmbiance,
    builder: (column) => column,
  );

  GeneratedColumn<int> get scorePrelim => $composableBuilder(
    column: $table.scorePrelim,
    builder: (column) => column,
  );

  GeneratedColumn<int> get scoreAct =>
      $composableBuilder(column: $table.scoreAct, builder: (column) => column);

  GeneratedColumn<int> get scoreAftercare => $composableBuilder(
    column: $table.scoreAftercare,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<int>, String> get adjectives =>
      $composableBuilder(
        column: $table.adjectives,
        builder: (column) => column,
      );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<bool> get isSafeSex =>
      $composableBuilder(column: $table.isSafeSex, builder: (column) => column);

  $$PartnersTableAnnotationComposer get partnerId {
    final $$PartnersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.partnerId,
      referencedTable: $db.partners,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PartnersTableAnnotationComposer(
            $db: $db,
            $table: $db.partners,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EncountersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EncountersTable,
          Encounter,
          $$EncountersTableFilterComposer,
          $$EncountersTableOrderingComposer,
          $$EncountersTableAnnotationComposer,
          $$EncountersTableCreateCompanionBuilder,
          $$EncountersTableUpdateCompanionBuilder,
          (Encounter, $$EncountersTableReferences),
          Encounter,
          PrefetchHooks Function({bool partnerId})
        > {
  $$EncountersTableTableManager(_$AppDatabase db, $EncountersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EncountersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EncountersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EncountersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> partnerId = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<int?> scoreAmbiance = const Value.absent(),
                Value<int?> scorePrelim = const Value.absent(),
                Value<int?> scoreAct = const Value.absent(),
                Value<int?> scoreAftercare = const Value.absent(),
                Value<List<int>> adjectives = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<bool> isSafeSex = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EncountersCompanion(
                id: id,
                partnerId: partnerId,
                date: date,
                scoreAmbiance: scoreAmbiance,
                scorePrelim: scorePrelim,
                scoreAct: scoreAct,
                scoreAftercare: scoreAftercare,
                adjectives: adjectives,
                notes: notes,
                isSafeSex: isSafeSex,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String partnerId,
                required DateTime date,
                Value<int?> scoreAmbiance = const Value.absent(),
                Value<int?> scorePrelim = const Value.absent(),
                Value<int?> scoreAct = const Value.absent(),
                Value<int?> scoreAftercare = const Value.absent(),
                Value<List<int>> adjectives = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<bool> isSafeSex = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EncountersCompanion.insert(
                id: id,
                partnerId: partnerId,
                date: date,
                scoreAmbiance: scoreAmbiance,
                scorePrelim: scorePrelim,
                scoreAct: scoreAct,
                scoreAftercare: scoreAftercare,
                adjectives: adjectives,
                notes: notes,
                isSafeSex: isSafeSex,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$EncountersTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({partnerId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (partnerId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.partnerId,
                                referencedTable: $$EncountersTableReferences
                                    ._partnerIdTable(db),
                                referencedColumn: $$EncountersTableReferences
                                    ._partnerIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$EncountersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EncountersTable,
      Encounter,
      $$EncountersTableFilterComposer,
      $$EncountersTableOrderingComposer,
      $$EncountersTableAnnotationComposer,
      $$EncountersTableCreateCompanionBuilder,
      $$EncountersTableUpdateCompanionBuilder,
      (Encounter, $$EncountersTableReferences),
      Encounter,
      PrefetchHooks Function({bool partnerId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PartnersTableTableManager get partners =>
      $$PartnersTableTableManager(_db, _db.partners);
  $$EncountersTableTableManager get encounters =>
      $$EncountersTableTableManager(_db, _db.encounters);
}
