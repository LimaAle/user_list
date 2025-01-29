import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:user_list/data/repositories/user/user_repository.dart';
import 'package:user_list/data/repositories/user/user_repository_impl.dart';
import 'package:user_list/data/services/api.dart';
import 'package:user_list/data/services/user/user_api.dart';

class GlobalBinding extends Bindings {
  @override
  void dependencies() {
    // Instanciando o Dio
    Get.put<Dio>(Dio(BaseOptions(baseUrl: 'https://67991c3ebe2191d708b206ac.mockapi.io/api')));

    // Instanciando a Api
    Get.put<Api>(Api(Get.find<Dio>()));

    // Instanciando o UserApi
    Get.put<UserApi>(UserApi(Get.find<Api>()));

    // Instanciando o UserRepository
    Get.put<UserRepository>(UserRepositoryImpl(Get.find<UserApi>()));
  }
}
