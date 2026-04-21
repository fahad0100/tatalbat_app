// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddItemListModel _$AddItemListModelFromJson(Map<String, dynamic> json) =>
    _AddItemListModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$AddItemListModelToJson(_AddItemListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
