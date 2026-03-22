import 'package:alisoncart/screens/home_screen.dart';
import 'package:alisoncart/servieces/auth_service.dart';
import 'package:alisoncart/servieces/prefs_service.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final AuthService _authService = AuthService();
  final PrefService _prefService = PrefService();

  RxBool isloading = false.obs;
  RxBool hide = false.obs;

  void togglePassword() {
    hide.value = !hide.value;
  }

  void login({required String email, required String password}) async {
    try {
      isloading.value = true;

     final customerData =  await _authService.login(email: email, password: password);


     _prefService.setString('id', customerData.id);
     _prefService.setString('token', customerData.token);

    Get.to(HomeScreen());

     

      Get.snackbar(
        "Success",
        "Login successful",
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 10,
        duration: const Duration(seconds: 2),
      );
       
    } catch (e) {
      Get.snackbar(
        "Faild",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 10,
        duration: const Duration(seconds: 2),
      );
    } finally {
      isloading.value = false;
    }
  }
}
