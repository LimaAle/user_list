import 'package:get/get.dart';
import 'package:user_list/data/repositories/user/user_repository.dart';
import 'package:user_list/ui/home/home_viewmodel.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewmodel>(() => HomeViewmodel(Get.find<UserRepository>()));
  }
}