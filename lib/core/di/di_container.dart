import 'package:cinescope/core/di/di_container.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> initDi() async {
  await getIt.init();
  return getIt.allReady();
}
