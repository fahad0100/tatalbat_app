import 'package:injectable/injectable.dart';
import 'package:talabat_app/features/add_item_list/sub/add_items/presentation/pages/add_items_feature_widget.dart';

@lazySingleton
class InsertService {
  String? nameList;
  String? pathImageList;
  String? description;
  List<ItemInsert> itemInserts = [];
  InsertService();
}
