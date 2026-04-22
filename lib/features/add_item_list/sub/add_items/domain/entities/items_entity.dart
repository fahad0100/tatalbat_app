import 'package:equatable/equatable.dart';

class ItemsEntity extends Equatable {
  final String id;
  final String name;
  final double price;
  final String url;
  final String barcode;

  const ItemsEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.url,
    required this.barcode,
  });

  @override
  List<Object?> get props => [id, name, price, url, barcode];
}
