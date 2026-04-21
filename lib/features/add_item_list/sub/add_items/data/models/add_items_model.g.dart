// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddItemsModel _$AddItemsModelFromJson(Map<String, dynamic> json) =>
    _AddItemsModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$AddItemsModelToJson(_AddItemsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
