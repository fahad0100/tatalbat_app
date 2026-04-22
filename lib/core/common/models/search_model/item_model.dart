import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/add_items_entity.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/domain/entities/items_entity.dart';
import 'package:talabat_app/features/search/domain/entities/search_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
abstract class ItemModel with _$ItemModel {
  const factory ItemModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name_ar") required String nameAr,
    @JsonKey(name: "name_en") String? nameEn,
    @JsonKey(name: "description_ar") String? descriptionAr,
    @JsonKey(name: "description_en") String? descriptionEn,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "barcode") required String barcode,
    @JsonKey(name: "image_url") required String imageUrl,
    @JsonKey(name: "link") required String link,
    @JsonKey(name: "site") required String site,
    @JsonKey(name: "category") required String category,
    @JsonKey(name: "sub_category") String? subCategory,
    @JsonKey(name: "is_active") required bool isActive,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, Object?> json) =>
      _$ItemModelFromJson(json);
}

extension ItemModelMapper on ItemModel {
  SearchEntity toEntityBaseData() {
    return SearchEntity(
      id: id,
      nameAr: nameAr,
      nameEn: nameEn,
      descriptionAr: descriptionAr,
      descriptionEn: descriptionEn,
      price: price,
      barcode: barcode,
      imageUrl: imageUrl,
      category: category,
      subCategory: subCategory,
    );
  }

  ItemsEntity toEntityItem() {
    return ItemsEntity(
      id: id,
      name: nameAr,
      price: price,
      url: imageUrl,
      barcode: barcode,
    );
  }
}
