import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:retrofit_flutter/cubit/my_cubit.dart';
import 'package:retrofit_flutter/repository/my_repo.dart';
import 'package:retrofit_flutter/webservices/web_services.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt()));
  getIt.registerLazySingleton<MyRepo>(() => MyRepo(getIt()));
  getIt.registerLazySingleton<Webservices>(() => Webservices(Dio()));
}































//   getIt.registerLazySingleton<Webservices>(
//       () => Webservices(createAndSetupDio()));
// }

// Dio createAndSetupDio() {
//   Dio dio = Dio();

//   dio
//     ..options.connectTimeout = const Duration(seconds: 10)
//     ..options.receiveTimeout = const Duration(seconds: 10);

//   dio.interceptors.add(LogInterceptor(
//     responseBody: true,
//     error: true,
//     requestHeader: false,
//     responseHeader: false,
//     request: true,
//     requestBody: true,
//   ));

//   return dio;
// }
