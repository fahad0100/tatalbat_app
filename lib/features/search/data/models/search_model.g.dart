// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => _SearchModel(
  id: json['id'] as String,
  nameAr: json['name_ar'] as String,
  nameEn: json['name_en'] as String?,
  descriptionAr: json['description_ar'] as String?,
  descriptionEn: json['description_en'] as String?,
  price: (json['price'] as num).toDouble(),
  barcode: json['barcode'] as String,
  imageUrl: json['image_url'] as String,
  link: json['link'] as String,
  site: json['site'] as String,
  category: json['category'] as String,
  subCategory: json['sub_category'] as String?,
  isActive: json['is_active'] as bool,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$SearchModelToJson(_SearchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_ar': instance.nameAr,
      'name_en': instance.nameEn,
      'description_ar': instance.descriptionAr,
      'description_en': instance.descriptionEn,
      'price': instance.price,
      'barcode': instance.barcode,
      'image_url': instance.imageUrl,
      'link': instance.link,
      'site': instance.site,
      'category': instance.category,
      'sub_category': instance.subCategory,
      'is_active': instance.isActive,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
