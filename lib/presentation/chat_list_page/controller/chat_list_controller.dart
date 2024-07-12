import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/chat_list_page/models/chat_list_model.dart';

import '../models/userprofileinfo_item_model.dart';

class ChatListController extends GetxController {
 List<UserprofileinfoItemModel> chatList = ChatListModel.getCahtList();
}
