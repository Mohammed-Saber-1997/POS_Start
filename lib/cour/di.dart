import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pos_start/cubit/app_cubit.dart';
import 'package:pos_start/data/datasources/local_data_source.dart';
import 'package:pos_start/data/datasources/remote_data_source.dart';
import 'package:pos_start/data/repositories/repository_implementation.dart';
import 'package:pos_start/domain/repositories/repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain/usecases/login_usecase.dart';
import '../presentation/login/cubit/login_cubit.dart';
import 'app_prefs.dart';
import 'converter/input_converter.dart';
import 'network/network_info.dart';

final instance = GetIt.instance;

Future<void> init() async {
  /// Features ->
  instance.registerFactory<AppCubit>(
    () => AppCubit(
        appPreferences: instance<AppPreferences>(),
        networkInfo: isWeb ? null : instance<NetworkInfo>()),
  );

  instance.registerFactory<LoginCubit>(
    () => LoginCubit(loginUseCase: instance<LoginUseCase>()),
  );

  /// Use cases
  instance.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(repository: instance<Repository>()),
  );

  /// Repository
  instance.registerLazySingleton<Repository>(
    () => RepositoryImplementation(
      localDataSource: instance<LocalDataSource>(),
      remoteDataSource: instance<RemoteDataSource>(),
      networkInfo: isWeb ? null : instance<NetworkInfo>(),
    ),
  );

  /// Data sources
  instance.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImplementation(),
  );

  instance.registerLazySingleton<LocalDataSource>(
    () => LocalDataSourceImplementation(),
  );

  /// Core
  instance.registerLazySingleton<InputConverter>(
    () => InputConverter(),
  );

  if (!isWeb) {
    instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementation(instance<InternetConnectionChecker>()),
    );

    instance.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker(),
    );
  }

  /// External
  // shared prefs instance
  final sharedPrefs = await SharedPreferences.getInstance();
  instance.registerLazySingleton<SharedPreferences>(
    () => sharedPrefs,
  );

  // app prefs instance
  instance.registerLazySingleton<AppPreferences>(
    () => AppPreferences(instance<SharedPreferences>()),
  );
}
