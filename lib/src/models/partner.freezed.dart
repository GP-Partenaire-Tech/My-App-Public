// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Partner {

 String get id; String? get firstName; String? get alias; int? get age; Gender get gender; int? get hair; int? get eyes; int? get skin; int? get height; int? get penisSize; int? get chestSize; String? get notes; DateTime get createdAt;
/// Create a copy of Partner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PartnerCopyWith<Partner> get copyWith => _$PartnerCopyWithImpl<Partner>(this as Partner, _$identity);

  /// Serializes this Partner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Partner&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.alias, alias) || other.alias == alias)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.hair, hair) || other.hair == hair)&&(identical(other.eyes, eyes) || other.eyes == eyes)&&(identical(other.skin, skin) || other.skin == skin)&&(identical(other.height, height) || other.height == height)&&(identical(other.penisSize, penisSize) || other.penisSize == penisSize)&&(identical(other.chestSize, chestSize) || other.chestSize == chestSize)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,alias,age,gender,hair,eyes,skin,height,penisSize,chestSize,notes,createdAt);

@override
String toString() {
  return 'Partner(id: $id, firstName: $firstName, alias: $alias, age: $age, gender: $gender, hair: $hair, eyes: $eyes, skin: $skin, height: $height, penisSize: $penisSize, chestSize: $chestSize, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PartnerCopyWith<$Res>  {
  factory $PartnerCopyWith(Partner value, $Res Function(Partner) _then) = _$PartnerCopyWithImpl;
@useResult
$Res call({
 String id, String? firstName, String? alias, int? age, Gender gender, int? hair, int? eyes, int? skin, int? height, int? penisSize, int? chestSize, String? notes, DateTime createdAt
});




}
/// @nodoc
class _$PartnerCopyWithImpl<$Res>
    implements $PartnerCopyWith<$Res> {
  _$PartnerCopyWithImpl(this._self, this._then);

  final Partner _self;
  final $Res Function(Partner) _then;

/// Create a copy of Partner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = freezed,Object? alias = freezed,Object? age = freezed,Object? gender = null,Object? hair = freezed,Object? eyes = freezed,Object? skin = freezed,Object? height = freezed,Object? penisSize = freezed,Object? chestSize = freezed,Object? notes = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,alias: freezed == alias ? _self.alias : alias // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,hair: freezed == hair ? _self.hair : hair // ignore: cast_nullable_to_non_nullable
as int?,eyes: freezed == eyes ? _self.eyes : eyes // ignore: cast_nullable_to_non_nullable
as int?,skin: freezed == skin ? _self.skin : skin // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,penisSize: freezed == penisSize ? _self.penisSize : penisSize // ignore: cast_nullable_to_non_nullable
as int?,chestSize: freezed == chestSize ? _self.chestSize : chestSize // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Partner].
extension PartnerPatterns on Partner {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Partner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Partner() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Partner value)  $default,){
final _that = this;
switch (_that) {
case _Partner():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Partner value)?  $default,){
final _that = this;
switch (_that) {
case _Partner() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? firstName,  String? alias,  int? age,  Gender gender,  int? hair,  int? eyes,  int? skin,  int? height,  int? penisSize,  int? chestSize,  String? notes,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Partner() when $default != null:
return $default(_that.id,_that.firstName,_that.alias,_that.age,_that.gender,_that.hair,_that.eyes,_that.skin,_that.height,_that.penisSize,_that.chestSize,_that.notes,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? firstName,  String? alias,  int? age,  Gender gender,  int? hair,  int? eyes,  int? skin,  int? height,  int? penisSize,  int? chestSize,  String? notes,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Partner():
return $default(_that.id,_that.firstName,_that.alias,_that.age,_that.gender,_that.hair,_that.eyes,_that.skin,_that.height,_that.penisSize,_that.chestSize,_that.notes,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? firstName,  String? alias,  int? age,  Gender gender,  int? hair,  int? eyes,  int? skin,  int? height,  int? penisSize,  int? chestSize,  String? notes,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Partner() when $default != null:
return $default(_that.id,_that.firstName,_that.alias,_that.age,_that.gender,_that.hair,_that.eyes,_that.skin,_that.height,_that.penisSize,_that.chestSize,_that.notes,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Partner implements Partner {
  const _Partner({required this.id, this.firstName, this.alias, this.age, required this.gender, this.hair, this.eyes, this.skin, this.height, this.penisSize, this.chestSize, this.notes, required this.createdAt});
  factory _Partner.fromJson(Map<String, dynamic> json) => _$PartnerFromJson(json);

@override final  String id;
@override final  String? firstName;
@override final  String? alias;
@override final  int? age;
@override final  Gender gender;
@override final  int? hair;
@override final  int? eyes;
@override final  int? skin;
@override final  int? height;
@override final  int? penisSize;
@override final  int? chestSize;
@override final  String? notes;
@override final  DateTime createdAt;

/// Create a copy of Partner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PartnerCopyWith<_Partner> get copyWith => __$PartnerCopyWithImpl<_Partner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PartnerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Partner&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.alias, alias) || other.alias == alias)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.hair, hair) || other.hair == hair)&&(identical(other.eyes, eyes) || other.eyes == eyes)&&(identical(other.skin, skin) || other.skin == skin)&&(identical(other.height, height) || other.height == height)&&(identical(other.penisSize, penisSize) || other.penisSize == penisSize)&&(identical(other.chestSize, chestSize) || other.chestSize == chestSize)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,alias,age,gender,hair,eyes,skin,height,penisSize,chestSize,notes,createdAt);

@override
String toString() {
  return 'Partner(id: $id, firstName: $firstName, alias: $alias, age: $age, gender: $gender, hair: $hair, eyes: $eyes, skin: $skin, height: $height, penisSize: $penisSize, chestSize: $chestSize, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PartnerCopyWith<$Res> implements $PartnerCopyWith<$Res> {
  factory _$PartnerCopyWith(_Partner value, $Res Function(_Partner) _then) = __$PartnerCopyWithImpl;
@override @useResult
$Res call({
 String id, String? firstName, String? alias, int? age, Gender gender, int? hair, int? eyes, int? skin, int? height, int? penisSize, int? chestSize, String? notes, DateTime createdAt
});




}
/// @nodoc
class __$PartnerCopyWithImpl<$Res>
    implements _$PartnerCopyWith<$Res> {
  __$PartnerCopyWithImpl(this._self, this._then);

  final _Partner _self;
  final $Res Function(_Partner) _then;

/// Create a copy of Partner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = freezed,Object? alias = freezed,Object? age = freezed,Object? gender = null,Object? hair = freezed,Object? eyes = freezed,Object? skin = freezed,Object? height = freezed,Object? penisSize = freezed,Object? chestSize = freezed,Object? notes = freezed,Object? createdAt = null,}) {
  return _then(_Partner(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,alias: freezed == alias ? _self.alias : alias // ignore: cast_nullable_to_non_nullable
as String?,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender,hair: freezed == hair ? _self.hair : hair // ignore: cast_nullable_to_non_nullable
as int?,eyes: freezed == eyes ? _self.eyes : eyes // ignore: cast_nullable_to_non_nullable
as int?,skin: freezed == skin ? _self.skin : skin // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,penisSize: freezed == penisSize ? _self.penisSize : penisSize // ignore: cast_nullable_to_non_nullable
as int?,chestSize: freezed == chestSize ? _self.chestSize : chestSize // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
