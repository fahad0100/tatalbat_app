import 'package:get_it/get_it.dart';
import 'package:talabat_app/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:talabat_app/features/loading/di/loading_di.dart';
import 'package:talabat_app/features/auth/di/auth_di.dart';
import 'package:talabat_app/features/home/di/home_di.dart';
import 'package:talabat_app/features/search/di/search_di.dart';

@InjectableInit(
  initializerName: 'init', 
  preferRelativeImports: true,
  asExtension: true, 
  generateForDir: ['lib/core'],
)

Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
    configureLoading(getIt);
    configureAuth(getIt);
    configureHome(getIt);
    configureSearch(getIt);
}
