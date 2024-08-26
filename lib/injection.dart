import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:retrofit_flutter/cubit/my_cubit.dart';
import 'package:retrofit_flutter/repos/my_repo.dart';
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
//     ..options.connectTimeout = (200 * 1000) as Duration?
//     ..options.receiveTimeout = (200 * 1000) as Duration?;

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
