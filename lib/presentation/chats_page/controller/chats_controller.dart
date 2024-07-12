import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/chats_page/models/chats_model.dart';


class ChatsController extends GetxController {
  ChatsController(this.chatsModelObj);

  Rx<ChatsModel> chatsModelObj;
}
