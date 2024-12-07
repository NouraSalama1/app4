import 'package:app4/cubit/my_cubit.dart';
import 'package:app4/repo.dart';
import 'package:app4/webservices.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<MyCubit>(()=>MyCubit(getIt()));
  getIt.registerLazySingleton<MyRepo>(()=>MyRepo(getIt()));
getIt.registerLazySingleton<WebServices>(()=>WebServices(Dio()));
}