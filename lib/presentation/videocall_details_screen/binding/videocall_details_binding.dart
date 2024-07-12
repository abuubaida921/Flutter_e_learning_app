import '../controller/videocall_details_controller.dart';
import 'package:get/get.dart';


class VideocallDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideocallDetailsController());
  }
}
