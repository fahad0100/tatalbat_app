import 'package:talabat_app/features/loading/domain/entities/loading_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'loading_model.freezed.dart';
part 'loading_model.g.dart';

@freezed
abstract class LoadingModel with _$LoadingModel {
  const factory LoadingModel({
    @JsonKey(defaultValue: false) required bool isLogin,
    bool? isUser,
  }) = _LoadingModel;

  factory LoadingModel.fromJson(Map<String, Object?> json) =>
      _$LoadingModelFromJson(json);
}

extension LoadingModelMapper on LoadingModel {
  LoadingEntity toEntity() {
    return LoadingEntity(isLogin: isLogin, isUser: isUser);
  }
}
