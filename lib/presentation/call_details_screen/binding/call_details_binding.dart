import '../controller/call_details_controller.dart';
import 'package:get/get.dart';

class CallDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CallDetailsController());
  }
}
