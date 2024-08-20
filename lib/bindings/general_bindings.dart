import 'package:get/get.dart';
import 'package:vinxes_store/utils/network/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    /// using Get.put to create an instance of a class and calling it once at the start of the application
    Get.put(NetworkManager());
  }
}
