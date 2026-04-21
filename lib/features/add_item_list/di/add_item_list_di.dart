import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'add_item_list_di.config.dart'; 

@InjectableInit(
  initializerName: 'initAddItemList',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/add_item_list'],
)
void configureAddItemList(GetIt getIt) {
  getIt.initAddItemList();
}
