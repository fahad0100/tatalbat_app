// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => _SearchModel(
  id: (json['id'] as num).toInt(),
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
);

Map<String, dynamic> _$SearchModelToJson(_SearchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
