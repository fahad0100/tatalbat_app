import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/add_items_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_items_model.freezed.dart';
part 'add_items_model.g.dart';

@freezed
abstract class AddItemsModel with _$AddItemsModel {
  const factory AddItemsModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _AddItemsModel;

  factory AddItemsModel.fromJson(Map<String, Object?> json) => _$AddItemsModelFromJson(json);
}



extension AddItemsModelMapper on AddItemsModel {
  AddItemsEntity toEntity() {
    return AddItemsEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
