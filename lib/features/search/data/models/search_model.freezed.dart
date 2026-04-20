// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchModel {

 int get id; String get firstName; String get lastName;
/// Create a copy of SearchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchModelCopyWith<SearchModel> get copyWith => _$SearchModelCopyWithImpl<SearchModel>(this as SearchModel, _$identity);

  /// Serializes this SearchModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName);

@override
String toString() {
  return 'SearchModel(id: $id, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class $SearchModelCopyWith<$Res>  {
  factory $SearchModelCopyWith(SearchModel value, $Res Function(SearchModel) _then) = _$SearchModelCopyWithImpl;
@useResult
$Res call({
 int id, String firstName, String lastName
});




}
/// @nodoc
class _$SearchModelCopyWithImpl<$Res>
    implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._self, this._then);

  final SearchModel _self;
  final $Res Function(SearchModel) _then;

/// Create a copy of SearchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchModel].
extension SearchModelPatterns on SearchModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchModel value)  $default,){
final _that = this;
switch (_that) {
case _SearchModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchModel value)?  $default,){
final _that = this;
switch (_that) {
case _SearchModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String firstName,  String lastName)  $default,) {final _that = this;
switch (_that) {
case _SearchModel():
return $default(_that.id,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String firstName,  String lastName)?  $default,) {final _that = this;
switch (_that) {
case _SearchModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchModel implements SearchModel {
  const _SearchModel({required this.id, required this.firstName, required this.lastName});
  factory _SearchModel.fromJson(Map<String, dynamic> json) => _$SearchModelFromJson(json);

@override final  int id;
@override final  String firstName;
@override final  String lastName;

/// Create a copy of SearchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchModelCopyWith<_SearchModel> get copyWith => __$SearchModelCopyWithImpl<_SearchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName);

@override
String toString() {
  return 'SearchModel(id: $id, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$SearchModelCopyWith<$Res> implements $SearchModelCopyWith<$Res> {
  factory _$SearchModelCopyWith(_SearchModel value, $Res Function(_SearchModel) _then) = __$SearchModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String firstName, String lastName
});




}
/// @nodoc
class __$SearchModelCopyWithImpl<$Res>
    implements _$SearchModelCopyWith<$Res> {
  __$SearchModelCopyWithImpl(this._self, this._then);

  final _SearchModel _self;
  final $Res Function(_SearchModel) _then;

/// Create a copy of SearchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_SearchModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
