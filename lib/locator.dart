import 'package:bases_web/ui/services/navigator_service.dart';
import 'package:get_it/get_it.dart';

    GetIt locator = GetIt.instance;

  void setupLocator(){
  locator.registerLazySingleton(() => NavigationService());
  }
