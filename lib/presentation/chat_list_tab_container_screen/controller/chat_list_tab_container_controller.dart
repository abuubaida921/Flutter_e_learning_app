import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/chat_list_tab_container_screen/models/chat_list_tab_container_model.dart';
import 'package:flutter/material.dart';

class ChatListTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ChatListTabContainerModel> chatListTabContainerModelObj =
      ChatListTabContainerModel().obs;
  int currentTab = 0;
  late TabController tabviewController =
  Get.put(TabController(vsync: this, length: 2));


}
