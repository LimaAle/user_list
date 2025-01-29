import 'package:get/get.dart';
import 'package:user_list/data/repositories/user/user_repository.dart';
import 'package:user_list/domain/entities/user/user_entity.dart';

class HomeViewmodel extends GetxController {
  HomeViewmodel(this._userRepository);
  final UserRepository _userRepository;
  RxList<UserEntity> userList = <UserEntity>[].obs;
  var isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    getUser();
  }

  Future<void> getUser() async {
    isLoading.value=true;
    var users= await _userRepository.getUser();
    userList.assignAll(users);
    isLoading.value=false;
  }
}
