import 'package:talabat_app/features/add_item_list/domain/entities/add_item_list_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_item_list_model.freezed.dart';
part 'add_item_list_model.g.dart';

@freezed
abstract class AddItemListModel with _$AddItemListModel {
  const factory AddItemListModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _AddItemListModel;

  factory AddItemListModel.fromJson(Map<String, Object?> json) => _$AddItemListModelFromJson(json);
}



extension AddItemListModelMapper on AddItemListModel {
  AddItemListEntity toEntity() {
    return AddItemListEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
