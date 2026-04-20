import 'package:equatable/equatable.dart';

class SearchEntity extends Equatable {
  final String id;
  final String nameAr;
  final String? nameEn;
  final String? descriptionAr;
  final String? descriptionEn;
  final double price;
  final String barcode;
  final String imageUrl;
  final String category;
  final String? subCategory;

  const SearchEntity({
    required this.id,
    required this.nameAr,
    this.nameEn,
    this.descriptionAr,
    this.descriptionEn,
    required this.price,
    required this.barcode,
    required this.imageUrl,
    required this.category,
    this.subCategory,
  });

  @override
  List<Object?> get props => [
    id,
    nameAr,
    nameEn,
    descriptionAr,
    descriptionEn,
    price,
    barcode,
    imageUrl,
    category,
    subCategory,
  ];
}
