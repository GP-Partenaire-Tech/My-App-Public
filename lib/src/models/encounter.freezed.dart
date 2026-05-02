// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encounter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Encounter {

 String get id; String get partnerId; DateTime get date; int? get scoreAmbiance; int? get scorePrelim; int? get scoreAct; int? get scoreAftercare; List<String> get adjectives; String? get notes; bool get isSafeSex;
/// Create a copy of Encounter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncounterCopyWith<Encounter> get copyWith => _$EncounterCopyWithImpl<Encounter>(this as Encounter, _$identity);

  /// Serializes this Encounter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Encounter&&(identical(other.id, id) || other.id == id)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.date, date) || other.date == date)&&(identical(other.scoreAmbiance, scoreAmbiance) || other.scoreAmbiance == scoreAmbiance)&&(identical(other.scorePrelim, scorePrelim) || other.scorePrelim == scorePrelim)&&(identical(other.scoreAct, scoreAct) || other.scoreAct == scoreAct)&&(identical(other.scoreAftercare, scoreAftercare) || other.scoreAftercare == scoreAftercare)&&const DeepCollectionEquality().equals(other.adjectives, adjectives)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isSafeSex, isSafeSex) || other.isSafeSex == isSafeSex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,partnerId,date,scoreAmbiance,scorePrelim,scoreAct,scoreAftercare,const DeepCollectionEquality().hash(adjectives),notes,isSafeSex);

@override
String toString() {
  return 'Encounter(id: $id, partnerId: $partnerId, date: $date, scoreAmbiance: $scoreAmbiance, scorePrelim: $scorePrelim, scoreAct: $scoreAct, scoreAftercare: $scoreAftercare, adjectives: $adjectives, notes: $notes, isSafeSex: $isSafeSex)';
}


}

/// @nodoc
abstract mixin class $EncounterCopyWith<$Res>  {
  factory $EncounterCopyWith(Encounter value, $Res Function(Encounter) _then) = _$EncounterCopyWithImpl;
@useResult
$Res call({
 String id, String partnerId, DateTime date, int? scoreAmbiance, int? scorePrelim, int? scoreAct, int? scoreAftercare, List<String> adjectives, String? notes, bool isSafeSex
});




}
/// @nodoc
class _$EncounterCopyWithImpl<$Res>
    implements $EncounterCopyWith<$Res> {
  _$EncounterCopyWithImpl(this._self, this._then);

  final Encounter _self;
  final $Res Function(Encounter) _then;

/// Create a copy of Encounter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? partnerId = null,Object? date = null,Object? scoreAmbiance = freezed,Object? scorePrelim = freezed,Object? scoreAct = freezed,Object? scoreAftercare = freezed,Object? adjectives = null,Object? notes = freezed,Object? isSafeSex = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,partnerId: null == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,scoreAmbiance: freezed == scoreAmbiance ? _self.scoreAmbiance : scoreAmbiance // ignore: cast_nullable_to_non_nullable
as int?,scorePrelim: freezed == scorePrelim ? _self.scorePrelim : scorePrelim // ignore: cast_nullable_to_non_nullable
as int?,scoreAct: freezed == scoreAct ? _self.scoreAct : scoreAct // ignore: cast_nullable_to_non_nullable
as int?,scoreAftercare: freezed == scoreAftercare ? _self.scoreAftercare : scoreAftercare // ignore: cast_nullable_to_non_nullable
as int?,adjectives: null == adjectives ? _self.adjectives : adjectives // ignore: cast_nullable_to_non_nullable
as List<String>,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,isSafeSex: null == isSafeSex ? _self.isSafeSex : isSafeSex // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Encounter].
extension EncounterPatterns on Encounter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Encounter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Encounter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Encounter value)  $default,){
final _that = this;
switch (_that) {
case _Encounter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Encounter value)?  $default,){
final _that = this;
switch (_that) {
case _Encounter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String partnerId,  DateTime date,  int? scoreAmbiance,  int? scorePrelim,  int? scoreAct,  int? scoreAftercare,  List<String> adjectives,  String? notes,  bool isSafeSex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Encounter() when $default != null:
return $default(_that.id,_that.partnerId,_that.date,_that.scoreAmbiance,_that.scorePrelim,_that.scoreAct,_that.scoreAftercare,_that.adjectives,_that.notes,_that.isSafeSex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String partnerId,  DateTime date,  int? scoreAmbiance,  int? scorePrelim,  int? scoreAct,  int? scoreAftercare,  List<String> adjectives,  String? notes,  bool isSafeSex)  $default,) {final _that = this;
switch (_that) {
case _Encounter():
return $default(_that.id,_that.partnerId,_that.date,_that.scoreAmbiance,_that.scorePrelim,_that.scoreAct,_that.scoreAftercare,_that.adjectives,_that.notes,_that.isSafeSex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String partnerId,  DateTime date,  int? scoreAmbiance,  int? scorePrelim,  int? scoreAct,  int? scoreAftercare,  List<String> adjectives,  String? notes,  bool isSafeSex)?  $default,) {final _that = this;
switch (_that) {
case _Encounter() when $default != null:
return $default(_that.id,_that.partnerId,_that.date,_that.scoreAmbiance,_that.scorePrelim,_that.scoreAct,_that.scoreAftercare,_that.adjectives,_that.notes,_that.isSafeSex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Encounter implements Encounter {
  const _Encounter({required this.id, required this.partnerId, required this.date, this.scoreAmbiance, this.scorePrelim, this.scoreAct, this.scoreAftercare, final  List<String> adjectives = const [], this.notes, this.isSafeSex = false}): _adjectives = adjectives;
  factory _Encounter.fromJson(Map<String, dynamic> json) => _$EncounterFromJson(json);

@override final  String id;
@override final  String partnerId;
@override final  DateTime date;
@override final  int? scoreAmbiance;
@override final  int? scorePrelim;
@override final  int? scoreAct;
@override final  int? scoreAftercare;
 final  List<String> _adjectives;
@override@JsonKey() List<String> get adjectives {
  if (_adjectives is EqualUnmodifiableListView) return _adjectives;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_adjectives);
}

@override final  String? notes;
@override@JsonKey() final  bool isSafeSex;

/// Create a copy of Encounter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncounterCopyWith<_Encounter> get copyWith => __$EncounterCopyWithImpl<_Encounter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncounterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Encounter&&(identical(other.id, id) || other.id == id)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.date, date) || other.date == date)&&(identical(other.scoreAmbiance, scoreAmbiance) || other.scoreAmbiance == scoreAmbiance)&&(identical(other.scorePrelim, scorePrelim) || other.scorePrelim == scorePrelim)&&(identical(other.scoreAct, scoreAct) || other.scoreAct == scoreAct)&&(identical(other.scoreAftercare, scoreAftercare) || other.scoreAftercare == scoreAftercare)&&const DeepCollectionEquality().equals(other._adjectives, _adjectives)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.isSafeSex, isSafeSex) || other.isSafeSex == isSafeSex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,partnerId,date,scoreAmbiance,scorePrelim,scoreAct,scoreAftercare,const DeepCollectionEquality().hash(_adjectives),notes,isSafeSex);

@override
String toString() {
  return 'Encounter(id: $id, partnerId: $partnerId, date: $date, scoreAmbiance: $scoreAmbiance, scorePrelim: $scorePrelim, scoreAct: $scoreAct, scoreAftercare: $scoreAftercare, adjectives: $adjectives, notes: $notes, isSafeSex: $isSafeSex)';
}


}

/// @nodoc
abstract mixin class _$EncounterCopyWith<$Res> implements $EncounterCopyWith<$Res> {
  factory _$EncounterCopyWith(_Encounter value, $Res Function(_Encounter) _then) = __$EncounterCopyWithImpl;
@override @useResult
$Res call({
 String id, String partnerId, DateTime date, int? scoreAmbiance, int? scorePrelim, int? scoreAct, int? scoreAftercare, List<String> adjectives, String? notes, bool isSafeSex
});




}
/// @nodoc
class __$EncounterCopyWithImpl<$Res>
    implements _$EncounterCopyWith<$Res> {
  __$EncounterCopyWithImpl(this._self, this._then);

  final _Encounter _self;
  final $Res Function(_Encounter) _then;

/// Create a copy of Encounter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? partnerId = null,Object? date = null,Object? scoreAmbiance = freezed,Object? scorePrelim = freezed,Object? scoreAct = freezed,Object? scoreAftercare = freezed,Object? adjectives = null,Object? notes = freezed,Object? isSafeSex = null,}) {
  return _then(_Encounter(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,partnerId: null == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,scoreAmbiance: freezed == scoreAmbiance ? _self.scoreAmbiance : scoreAmbiance // ignore: cast_nullable_to_non_nullable
as int?,scorePrelim: freezed == scorePrelim ? _self.scorePrelim : scorePrelim // ignore: cast_nullable_to_non_nullable
as int?,scoreAct: freezed == scoreAct ? _self.scoreAct : scoreAct // ignore: cast_nullable_to_non_nullable
as int?,scoreAftercare: freezed == scoreAftercare ? _self.scoreAftercare : scoreAftercare // ignore: cast_nullable_to_non_nullable
as int?,adjectives: null == adjectives ? _self._adjectives : adjectives // ignore: cast_nullable_to_non_nullable
as List<String>,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,isSafeSex: null == isSafeSex ? _self.isSafeSex : isSafeSex // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
