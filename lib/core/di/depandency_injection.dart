import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:taqwa/core/networking/api_service.dart';
import 'package:taqwa/core/networking/dio_factory.dart';
import 'package:taqwa/features/auth/data/repos/login_repo.dart';
import 'package:taqwa/features/auth/logic/login_cubit/login_cubit.dart';

GetIt getIt = GetIt.instance;
Future<void> setupGetit() async {
  // Dio & ApiServices
  Dio dio =  DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
