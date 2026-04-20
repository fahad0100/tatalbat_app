import 'package:talabat_app/features/search/domain/entities/search_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_model.freezed.dart';
part 'search_model.g.dart';

@freezed
abstract class SearchModel with _$SearchModel {
  const factory SearchModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String, Object?> json) => _$SearchModelFromJson(json);
}



extension SearchModelMapper on SearchModel {
  SearchEntity toEntity() {
    return SearchEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
