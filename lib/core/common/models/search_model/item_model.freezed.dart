// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemModel {

@JsonKey(name: "id") String get id;@JsonKey(name: "name_ar") String get nameAr;@JsonKey(name: "name_en") String? get nameEn;@JsonKey(name: "description_ar") String? get descriptionAr;@JsonKey(name: "description_en") String? get descriptionEn;@JsonKey(name: "price") double get price;@JsonKey(name: "barcode") String get barcode;@JsonKey(name: "image_url") String get imageUrl;@JsonKey(name: "link") String get link;@JsonKey(name: "site") String get site;@JsonKey(name: "category") String get category;@JsonKey(name: "sub_category") String? get subCategory;@JsonKey(name: "is_active") bool get isActive;@JsonKey(name: "created_at") String get createdAt;@JsonKey(name: "updated_at") String get updatedAt;
/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemModelCopyWith<ItemModel> get copyWith => _$ItemModelCopyWithImpl<ItemModel>(this as ItemModel, _$identity);

  /// Serializes this ItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.descriptionAr, descriptionAr) || other.descriptionAr == descriptionAr)&&(identical(other.descriptionEn, descriptionEn) || other.descriptionEn == descriptionEn)&&(identical(other.price, price) || other.price == price)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.link, link) || other.link == link)&&(identical(other.site, site) || other.site == site)&&(identical(other.category, category) || other.category == category)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameAr,nameEn,descriptionAr,descriptionEn,price,barcode,imageUrl,link,site,category,subCategory,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'ItemModel(id: $id, nameAr: $nameAr, nameEn: $nameEn, descriptionAr: $descriptionAr, descriptionEn: $descriptionEn, price: $price, barcode: $barcode, imageUrl: $imageUrl, link: $link, site: $site, category: $category, subCategory: $subCategory, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ItemModelCopyWith<$Res>  {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) _then) = _$ItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String id,@JsonKey(name: "name_ar") String nameAr,@JsonKey(name: "name_en") String? nameEn,@JsonKey(name: "description_ar") String? descriptionAr,@JsonKey(name: "description_en") String? descriptionEn,@JsonKey(name: "price") double price,@JsonKey(name: "barcode") String barcode,@JsonKey(name: "image_url") String imageUrl,@JsonKey(name: "link") String link,@JsonKey(name: "site") String site,@JsonKey(name: "category") String category,@JsonKey(name: "sub_category") String? subCategory,@JsonKey(name: "is_active") bool isActive,@JsonKey(name: "created_at") String createdAt,@JsonKey(name: "updated_at") String updatedAt
});




}
/// @nodoc
class _$ItemModelCopyWithImpl<$Res>
    implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._self, this._then);

  final ItemModel _self;
  final $Res Function(ItemModel) _then;

/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameAr = null,Object? nameEn = freezed,Object? descriptionAr = freezed,Object? descriptionEn = freezed,Object? price = null,Object? barcode = null,Object? imageUrl = null,Object? link = null,Object? site = null,Object? category = null,Object? subCategory = freezed,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameAr: null == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,descriptionAr: freezed == descriptionAr ? _self.descriptionAr : descriptionAr // ignore: cast_nullable_to_non_nullable
as String?,descriptionEn: freezed == descriptionEn ? _self.descriptionEn : descriptionEn // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,site: null == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemModel].
extension ItemModelPatterns on ItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemModel value)  $default,){
final _that = this;
switch (_that) {
case _ItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _ItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String id, @JsonKey(name: "name_ar")  String nameAr, @JsonKey(name: "name_en")  String? nameEn, @JsonKey(name: "description_ar")  String? descriptionAr, @JsonKey(name: "description_en")  String? descriptionEn, @JsonKey(name: "price")  double price, @JsonKey(name: "barcode")  String barcode, @JsonKey(name: "image_url")  String imageUrl, @JsonKey(name: "link")  String link, @JsonKey(name: "site")  String site, @JsonKey(name: "category")  String category, @JsonKey(name: "sub_category")  String? subCategory, @JsonKey(name: "is_active")  bool isActive, @JsonKey(name: "created_at")  String createdAt, @JsonKey(name: "updated_at")  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemModel() when $default != null:
return $default(_that.id,_that.nameAr,_that.nameEn,_that.descriptionAr,_that.descriptionEn,_that.price,_that.barcode,_that.imageUrl,_that.link,_that.site,_that.category,_that.subCategory,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String id, @JsonKey(name: "name_ar")  String nameAr, @JsonKey(name: "name_en")  String? nameEn, @JsonKey(name: "description_ar")  String? descriptionAr, @JsonKey(name: "description_en")  String? descriptionEn, @JsonKey(name: "price")  double price, @JsonKey(name: "barcode")  String barcode, @JsonKey(name: "image_url")  String imageUrl, @JsonKey(name: "link")  String link, @JsonKey(name: "site")  String site, @JsonKey(name: "category")  String category, @JsonKey(name: "sub_category")  String? subCategory, @JsonKey(name: "is_active")  bool isActive, @JsonKey(name: "created_at")  String createdAt, @JsonKey(name: "updated_at")  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ItemModel():
return $default(_that.id,_that.nameAr,_that.nameEn,_that.descriptionAr,_that.descriptionEn,_that.price,_that.barcode,_that.imageUrl,_that.link,_that.site,_that.category,_that.subCategory,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String id, @JsonKey(name: "name_ar")  String nameAr, @JsonKey(name: "name_en")  String? nameEn, @JsonKey(name: "description_ar")  String? descriptionAr, @JsonKey(name: "description_en")  String? descriptionEn, @JsonKey(name: "price")  double price, @JsonKey(name: "barcode")  String barcode, @JsonKey(name: "image_url")  String imageUrl, @JsonKey(name: "link")  String link, @JsonKey(name: "site")  String site, @JsonKey(name: "category")  String category, @JsonKey(name: "sub_category")  String? subCategory, @JsonKey(name: "is_active")  bool isActive, @JsonKey(name: "created_at")  String createdAt, @JsonKey(name: "updated_at")  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ItemModel() when $default != null:
return $default(_that.id,_that.nameAr,_that.nameEn,_that.descriptionAr,_that.descriptionEn,_that.price,_that.barcode,_that.imageUrl,_that.link,_that.site,_that.category,_that.subCategory,_that.isActive,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemModel implements ItemModel {
  const _ItemModel({@JsonKey(name: "id") required this.id, @JsonKey(name: "name_ar") required this.nameAr, @JsonKey(name: "name_en") this.nameEn, @JsonKey(name: "description_ar") this.descriptionAr, @JsonKey(name: "description_en") this.descriptionEn, @JsonKey(name: "price") required this.price, @JsonKey(name: "barcode") required this.barcode, @JsonKey(name: "image_url") required this.imageUrl, @JsonKey(name: "link") required this.link, @JsonKey(name: "site") required this.site, @JsonKey(name: "category") required this.category, @JsonKey(name: "sub_category") this.subCategory, @JsonKey(name: "is_active") required this.isActive, @JsonKey(name: "created_at") required this.createdAt, @JsonKey(name: "updated_at") required this.updatedAt});
  factory _ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);

@override@JsonKey(name: "id") final  String id;
@override@JsonKey(name: "name_ar") final  String nameAr;
@override@JsonKey(name: "name_en") final  String? nameEn;
@override@JsonKey(name: "description_ar") final  String? descriptionAr;
@override@JsonKey(name: "description_en") final  String? descriptionEn;
@override@JsonKey(name: "price") final  double price;
@override@JsonKey(name: "barcode") final  String barcode;
@override@JsonKey(name: "image_url") final  String imageUrl;
@override@JsonKey(name: "link") final  String link;
@override@JsonKey(name: "site") final  String site;
@override@JsonKey(name: "category") final  String category;
@override@JsonKey(name: "sub_category") final  String? subCategory;
@override@JsonKey(name: "is_active") final  bool isActive;
@override@JsonKey(name: "created_at") final  String createdAt;
@override@JsonKey(name: "updated_at") final  String updatedAt;

/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemModelCopyWith<_ItemModel> get copyWith => __$ItemModelCopyWithImpl<_ItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.descriptionAr, descriptionAr) || other.descriptionAr == descriptionAr)&&(identical(other.descriptionEn, descriptionEn) || other.descriptionEn == descriptionEn)&&(identical(other.price, price) || other.price == price)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.link, link) || other.link == link)&&(identical(other.site, site) || other.site == site)&&(identical(other.category, category) || other.category == category)&&(identical(other.subCategory, subCategory) || other.subCategory == subCategory)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameAr,nameEn,descriptionAr,descriptionEn,price,barcode,imageUrl,link,site,category,subCategory,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'ItemModel(id: $id, nameAr: $nameAr, nameEn: $nameEn, descriptionAr: $descriptionAr, descriptionEn: $descriptionEn, price: $price, barcode: $barcode, imageUrl: $imageUrl, link: $link, site: $site, category: $category, subCategory: $subCategory, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$ItemModelCopyWith(_ItemModel value, $Res Function(_ItemModel) _then) = __$ItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String id,@JsonKey(name: "name_ar") String nameAr,@JsonKey(name: "name_en") String? nameEn,@JsonKey(name: "description_ar") String? descriptionAr,@JsonKey(name: "description_en") String? descriptionEn,@JsonKey(name: "price") double price,@JsonKey(name: "barcode") String barcode,@JsonKey(name: "image_url") String imageUrl,@JsonKey(name: "link") String link,@JsonKey(name: "site") String site,@JsonKey(name: "category") String category,@JsonKey(name: "sub_category") String? subCategory,@JsonKey(name: "is_active") bool isActive,@JsonKey(name: "created_at") String createdAt,@JsonKey(name: "updated_at") String updatedAt
});




}
/// @nodoc
class __$ItemModelCopyWithImpl<$Res>
    implements _$ItemModelCopyWith<$Res> {
  __$ItemModelCopyWithImpl(this._self, this._then);

  final _ItemModel _self;
  final $Res Function(_ItemModel) _then;

/// Create a copy of ItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameAr = null,Object? nameEn = freezed,Object? descriptionAr = freezed,Object? descriptionEn = freezed,Object? price = null,Object? barcode = null,Object? imageUrl = null,Object? link = null,Object? site = null,Object? category = null,Object? subCategory = freezed,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameAr: null == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,descriptionAr: freezed == descriptionAr ? _self.descriptionAr : descriptionAr // ignore: cast_nullable_to_non_nullable
as String?,descriptionEn: freezed == descriptionEn ? _self.descriptionEn : descriptionEn // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,site: null == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,subCategory: freezed == subCategory ? _self.subCategory : subCategory // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
