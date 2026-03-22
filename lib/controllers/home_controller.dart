import 'package:alisoncart/models/home_model.dart';
import 'package:alisoncart/servieces/home_service.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  final HomeService _homeService = HomeService();

  RxBool isLoading = false.obs;

  HomeData? fullHomeData;

  void fetchFullhomeData() async {
    try {
      isLoading.value = true;

      fullHomeData = await _homeService.getHomeData();
    } catch (e) {
      Get.snackbar(
        "Faild",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 10,
        duration: const Duration(seconds: 2),
      );
    } finally {
      isLoading.value = false;
    }
  }
}
