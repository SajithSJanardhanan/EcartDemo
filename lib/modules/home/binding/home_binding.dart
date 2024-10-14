import 'package:ecart/base_classes/base_binding.dart';
import 'package:ecart/modules/home/repo/home_repo.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/home_controller.dart';

class HomeBindings extends BaseBinding {
  @override
  void dependencies() {
    Get.put(HomeRepo());
    Get.put(HomeController());

    super.dependencies();
  }
}