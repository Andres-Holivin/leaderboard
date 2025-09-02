import 'package:fluro/fluro.dart';
import 'package:get_it/get_it.dart';
import 'package:leaderboard/config/dio_helper.dart';
import 'package:leaderboard/service/podium_service.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  getIt.registerSingleton(FluroRouter());
  getIt.registerSingleton(PodiumService());
  getIt.registerLazySingleton(() => DioHelper.init());
}
