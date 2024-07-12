import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter/material.dart';

import '../models/chat_details_model.dart';

class ChatDetailsController extends GetxController {
  TextEditingController massageController = TextEditingController();

  Rx<ChatDetailsModel> chatDetailsModelObj = ChatDetailsModel().obs;

  @override
  void onClose() {
    super.onClose();
    massageController.dispose();
  }
}
