import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'search_di.config.dart'; 

@InjectableInit(
  initializerName: 'initSearch',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/search'],
)
void configureSearch(GetIt getIt) {
  getIt.initSearch();
}
