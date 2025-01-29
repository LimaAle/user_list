import 'package:get/get.dart';
import 'package:user_list/data/repositories/user/user_repository.dart';
import 'package:user_list/domain/entities/user_detail/user_detail_entity.dart';

class DetailViewmodel extends GetxController {
  DetailViewmodel(this._userRepository);
  final UserRepository _userRepository;
  Rx<UserDetailEntity?> userDetail = Rx<UserDetailEntity?>(null);
  var isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    var data = Get.arguments;
    getUserDetail(data);
  }

  Future<void> getUserDetail(int userId) async {
    isLoading.value = true;
    var details = await _userRepository.getUserDetail(userId);
    userDetail.value = details[0];
    isLoading.value = false;
  }
}
