import 'package:get/get.dart';
import 'package:user_list/data/repositories/user/user_repository.dart';
import 'package:user_list/ui/details/detail_viewmodel.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailViewmodel>(() => DetailViewmodel(Get.find<UserRepository>()));
  }
}