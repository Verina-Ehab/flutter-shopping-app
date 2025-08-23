import 'package:flutter_sprints_microsoft_shopcraft/core/connectivity/connectivity_cubit.dart';
import 'package:flutter_sprints_microsoft_shopcraft/features/settings/cubit/settings_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

// This is the public function you will call on logout.

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<ConnectivityCubit>(() => ConnectivityCubit());
  getIt.registerLazySingleton<SettingsCubit>(() => SettingsCubit());
}
