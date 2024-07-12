import '../controller/chat_list_tab_container_controller.dart';
import 'package:get/get.dart';

class ChatListTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatListTabContainerController());
  }
}
